{{- define "odf-operator.name" }}
{{- $name := default .Release.Name .Values.nameOverride }}
{{- print $name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "odf-operator.namespace" }}
{{- $namespace := default .Values.namespace .Release.namespace }}
{{- print $namespace | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "odf-operator.operatorGroupName" }}
{{- $operatorGroupName := default .Values.operatorGroupName .Release.operatorGroupName }}
{{- print $operatorGroupName | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "odf-operator.subscriptionName" }}
{{- $subscriptionName := default .Release.Name .Values.subscriptionNameOverride }}
{{- print $subscriptionName }}
{{- end }}

{{- define "odf-operator.operatorChannel" }}
{{- if eq .Release.Name "ocs-operator" }}
{{- $operatorChannel := .Values.ocsOperatorChannel }}
{{- print $operatorChannel }}
{{- else if eq .Release.Name "odf-operator" }}
{{- $operatorChannel := .Values.odfOperatorChannel }}
{{- print $operatorChannel }}
{{- else }}
{{- $operatorChannel := .Values.odfOperatorChannel}}
{{- print $operatorChannel }}
{{- end }}
{{- end }}