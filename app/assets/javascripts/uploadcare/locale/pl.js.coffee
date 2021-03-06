uploadcare.namespace 'uploadcare.locale.translations', (ns) ->
  ns.pl =
    uploading: 'Przesyłanie... Proszę czekać.'
    errors:
      default: 'Błąd'
    draghere: 'Upuść plik tutaj'
    buttons:
      cancel: 'Anuluj'
      remove: 'Usuń'
    dialog:
      tabs:
        file:
          title: 'Mój komputer'
        url:
          title: 'Pliki z sieci'


uploadcare.namespace 'uploadcare.locale.pluralize', (ns) ->
  ns.pl = (n) ->
    return 'one' if n == 1
    return 'few' if (n % 10 in [2..4]) && (n % 100 not in [12..14])
    return 'many' if (n != 1) && (n % 10 not in [2..4] || n % 100 in [12..14])
    'other'
