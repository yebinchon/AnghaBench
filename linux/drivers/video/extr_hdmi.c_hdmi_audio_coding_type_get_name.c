
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hdmi_audio_coding_type { ____Placeholder_hdmi_audio_coding_type } hdmi_audio_coding_type ;
__attribute__((used)) static const char *
hdmi_audio_coding_type_get_name(enum hdmi_audio_coding_type coding_type)
{
 switch (coding_type) {
 case 129:
  return "Refer to Stream Header";
 case 130:
  return "PCM";
 case 142:
  return "AC-3";
 case 132:
  return "MPEG1";
 case 133:
  return "MP3";
 case 131:
  return "MPEG2";
 case 143:
  return "AAC";
 case 137:
  return "DTS";
 case 141:
  return "ATRAC";
 case 139:
  return "One Bit Audio";
 case 135:
  return "Dolby Digital +";
 case 136:
  return "DTS-HD";
 case 134:
  return "MAT (MLP)";
 case 138:
  return "DST";
 case 128:
  return "WMA PRO";
 case 140:
  return "Refer to CXT";
 }
 return "Invalid";
}
