module Voom
  module Presenters
    module Plugins
      module Localization
        module DSLHelpers
          def translate(_key, string = nil, capitalize: true, titleize: false, **options)
            string = _key.to_s.humanize(capitalize: capitalize) unless string
            string = string.titleize(keep_id_suffix: true) if titleize
            I18n.interpolate(string, options)
          end
          alias t translate
        end
      end
    end
  end
end
