{{/*
Common labels
*/}}
{{- define "dropper.labels" -}}
app.kubernetes.io/name: {{ .Values.appName }}
{{- with .Values.labels -}}
{{- toYaml . | nindent 0 -}}
{{- end }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "dropper.selectorLabels" -}}
{{ include "dropper.labels" . }}
{{- end }}
