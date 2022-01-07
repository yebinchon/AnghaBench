
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline const char *dwc3_trb_type_string(unsigned int type)
{
 switch (type) {
 case 128:
  return "normal";
 case 134:
  return "setup";
 case 133:
  return "status2";
 case 132:
  return "status3";
 case 135:
  return "data";
 case 130:
  return "isoc-first";
 case 131:
  return "isoc";
 case 129:
  return "link";
 default:
  return "UNKNOWN";
 }
}
