
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hdmi_active_aspect { ____Placeholder_hdmi_active_aspect } hdmi_active_aspect ;
__attribute__((used)) static const char *
hdmi_active_aspect_get_name(enum hdmi_active_aspect active_aspect)
{
 if (active_aspect < 0 || active_aspect > 0xf)
  return "Invalid";

 switch (active_aspect) {
 case 131:
  return "16:9 Top";
 case 136:
  return "14:9 Top";
 case 134:
  return "16:9 Center";
 case 128:
  return "Same as Picture";
 case 130:
  return "4:3";
 case 135:
  return "16:9";
 case 137:
  return "14:9";
 case 129:
  return "4:3 SP 14:9";
 case 133:
  return "16:9 SP 14:9";
 case 132:
  return "16:9 SP 4:3";
 }
 return "Reserved";
}
