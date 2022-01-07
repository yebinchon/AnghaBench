
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hdmi_picture_aspect { ____Placeholder_hdmi_picture_aspect } hdmi_picture_aspect ;
__attribute__((used)) static const char *
hdmi_picture_aspect_get_name(enum hdmi_picture_aspect picture_aspect)
{
 switch (picture_aspect) {
 case 129:
  return "No Data";
 case 131:
  return "4:3";
 case 133:
  return "16:9";
 case 130:
  return "64:27";
 case 132:
  return "256:135";
 case 128:
  return "Reserved";
 }
 return "Invalid";
}
