
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef enum wireless_mode { ____Placeholder_wireless_mode } wireless_mode ;


 int WIRELESS_MODE_AC_24G ;
 int WIRELESS_MODE_AC_5G ;
 int WIRELESS_MODE_N_24G ;

__attribute__((used)) static u8 _rtl8821ae_get_vht_eni(enum wireless_mode wirelessmode,
   u32 ratr_bitmap)
{
 u8 ret = 0;
 if (wirelessmode < WIRELESS_MODE_N_24G)
  ret = 0;
 else if (wirelessmode == WIRELESS_MODE_AC_24G) {
  if (ratr_bitmap & 0xfff00000)
   ret = 3;
  else
   ret = 2;
 } else if (wirelessmode == WIRELESS_MODE_AC_5G) {
   ret = 1;
 }

 return ret << 4;
}
