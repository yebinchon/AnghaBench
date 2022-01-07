
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char RATR_INX_WIRELESS_B ;
 unsigned char RATR_INX_WIRELESS_G ;
 unsigned char RATR_INX_WIRELESS_GB ;
 unsigned char RATR_INX_WIRELESS_N ;
 unsigned char RATR_INX_WIRELESS_NG ;
 unsigned char RATR_INX_WIRELESS_NGB ;
unsigned char networktype_to_raid(unsigned char network_type)
{
 switch (network_type) {
 case 134:
  return RATR_INX_WIRELESS_B;
 case 136:
 case 131:
  return RATR_INX_WIRELESS_G;
 case 133:
  return RATR_INX_WIRELESS_GB;
 case 129:
 case 128:
  return RATR_INX_WIRELESS_N;
 case 135:
 case 130:
  return RATR_INX_WIRELESS_NG;
 case 132:
  return RATR_INX_WIRELESS_NGB;
 default:
  return RATR_INX_WIRELESS_GB;
 }
}
