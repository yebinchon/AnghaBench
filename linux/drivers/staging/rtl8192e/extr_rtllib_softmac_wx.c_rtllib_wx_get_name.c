
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union iwreq_data {int name; } ;
struct rtllib_device {int modulation; int mode; } ;
struct iw_request_info {int dummy; } ;


 int IEEE_N_24G ;
 int IEEE_N_5G ;
 int RTLLIB_CCK_MODULATION ;
 int RTLLIB_OFDM_MODULATION ;
 int strcat (int ,char*) ;
 int strcpy (int ,char*) ;

int rtllib_wx_get_name(struct rtllib_device *ieee,
        struct iw_request_info *info,
        union iwreq_data *wrqu, char *extra)
{
 strcpy(wrqu->name, "802.11");

 if (ieee->modulation & RTLLIB_CCK_MODULATION)
  strcat(wrqu->name, "b");
 if (ieee->modulation & RTLLIB_OFDM_MODULATION)
  strcat(wrqu->name, "g");
 if (ieee->mode & (IEEE_N_24G | IEEE_N_5G))
  strcat(wrqu->name, "n");
 return 0;
}
