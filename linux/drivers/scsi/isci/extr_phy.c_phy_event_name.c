
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 int scu_get_event_code (int ) ;

__attribute__((used)) static const char *phy_event_name(u32 event_code)
{
 switch (scu_get_event_code(event_code)) {
 case 145:
  return "port selector";
 case 128:
  return "port selection";
 case 147:
  return "tx hard reset";
 case 148:
  return "rx hard reset";
 case 144:
  return "identify timeout";
 case 146:
  return "link fail";
 case 129:
  return "sata spinup hold";
 case 142:
 case 143:
  return "sas 1.5";
 case 140:
 case 141:
  return "sas 3.0";
 case 138:
 case 139:
  return "sas 6.0";
 case 135:
 case 136:
  return "sata 1.5";
 case 133:
 case 134:
  return "sata 3.0";
 case 131:
 case 132:
  return "sata 6.0";
 case 137:
  return "sas detect";
 case 130:
  return "sata detect";
 default:
  return "unknown";
 }
}
