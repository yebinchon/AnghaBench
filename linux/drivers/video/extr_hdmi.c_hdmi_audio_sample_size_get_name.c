
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hdmi_audio_sample_size { ____Placeholder_hdmi_audio_sample_size } hdmi_audio_sample_size ;







__attribute__((used)) static const char *
hdmi_audio_sample_size_get_name(enum hdmi_audio_sample_size sample_size)
{
 switch (sample_size) {
 case 128:
  return "Refer to Stream Header";
 case 131:
  return "16 bit";
 case 130:
  return "20 bit";
 case 129:
  return "24 bit";
 }
 return "Invalid";
}
