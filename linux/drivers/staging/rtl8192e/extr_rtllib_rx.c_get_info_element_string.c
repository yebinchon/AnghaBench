
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
__attribute__((used)) static const char *get_info_element_string(u16 id)
{
 switch (id) {
 case 132:
  return "SSID";
 case 136:
  return "RATES";
 case 148:
  return "FH_SET";
 case 149:
  return "DS_SET";
 case 153:
  return "CF_SET";
 case 130:
  return "TIM";
 case 143:
  return "IBSS_SET";
 case 151:
  return "COUNTRY";
 case 146:
  return "HOP_PARAMS";
 case 145:
  return "HOP_TABLE";
 case 134:
  return "REQUEST";
 case 152:
  return "CHALLENGE";
 case 139:
  return "POWER_CONSTRAINT";
 case 140:
  return "POWER_CAPABILITY";
 case 128:
  return "TPC_REQUEST";
 case 129:
  return "TPC_REPORT";
 case 131:
  return "SUPP_CHANNELS";
 case 150:
  return "CSA";
 case 141:
  return "MEASURE_REQUEST";
 case 142:
  return "MEASURE_REPORT";
 case 137:
  return "QUIET";
 case 144:
  return "IBSS_DFS";
 case 133:
  return "RSN";
 case 135:
  return "RATES_EX";
 case 147:
  return "GENERIC";
 case 138:
  return "QOS_PARAMETER";
 default:
  return "UNKNOWN";
 }
}
