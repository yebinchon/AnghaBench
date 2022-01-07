
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WIRELESS_11B ;
 int WIRELESS_11BG ;
 int WIRELESS_11G ;
 scalar_t__ rtw_is_cckrates_included (unsigned char*) ;
 scalar_t__ rtw_is_cckratesonly_included (unsigned char*) ;

int rtw_check_network_type(unsigned char *rate, int ratelen, int channel)
{

 if (rtw_is_cckratesonly_included(rate))
  return WIRELESS_11B;
 else if (rtw_is_cckrates_included(rate))
  return WIRELESS_11BG;
 else
  return WIRELESS_11G;
}
