
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int COUNTRY_CODE_ETSI ;
 int COUNTRY_CODE_GLOBAL_DOMAIN ;
 int COUNTRY_CODE_IC ;
 int COUNTRY_CODE_MAX ;
 int COUNTRY_CODE_TELEC_NETGEAR ;
 int COUNTRY_CODE_WORLD_WIDE_13 ;
 int COUNTRY_CODE_WORLD_WIDE_13_5G_ALL ;

__attribute__((used)) static u8 channel_plan_to_country_code(u8 channelplan)
{
 switch (channelplan) {
 case 0x20:
 case 0x21:
  return COUNTRY_CODE_WORLD_WIDE_13;
 case 0x22:
  return COUNTRY_CODE_IC;
 case 0x25:
  return COUNTRY_CODE_ETSI;
 case 0x32:
  return COUNTRY_CODE_TELEC_NETGEAR;
 case 0x41:
  return COUNTRY_CODE_GLOBAL_DOMAIN;
 case 0x7f:
  return COUNTRY_CODE_WORLD_WIDE_13_5G_ALL;
 default:
  return COUNTRY_CODE_MAX;
 }
}
