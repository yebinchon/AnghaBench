
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ sint ;


 int WLAN_EID_SSID ;
 int memcpy (int*,int*,int ) ;
 int memset (int*,int ,scalar_t__) ;
 int* rtw_get_ie (int*,int ,scalar_t__*,int ) ;

__attribute__((used)) static int update_hidden_ssid(u8 *ies, u32 ies_len, u8 hidden_ssid_mode)
{
 u8 *ssid_ie;
 sint ssid_len_ori;
 int len_diff = 0;

 ssid_ie = rtw_get_ie(ies, WLAN_EID_SSID, &ssid_len_ori, ies_len);



 if (ssid_ie && ssid_len_ori > 0) {
  switch (hidden_ssid_mode) {
  case 1:
  {
   u8 *next_ie = ssid_ie + 2 + ssid_len_ori;
   u32 remain_len = 0;

   remain_len = ies_len - (next_ie-ies);

   ssid_ie[1] = 0;
   memcpy(ssid_ie+2, next_ie, remain_len);
   len_diff -= ssid_len_ori;

   break;
  }
  case 2:
   memset(&ssid_ie[2], 0, ssid_len_ori);
   break;
  default:
   break;
 }
 }

 return len_diff;
}
