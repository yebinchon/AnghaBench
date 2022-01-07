
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union iwreq_data {int mode; } ;
struct rtllib_device {int iw_mode; } ;
struct iw_request_info {int dummy; } ;



int rtllib_wx_get_mode(struct rtllib_device *ieee, struct iw_request_info *a,
         union iwreq_data *wrqu, char *b)
{
 wrqu->mode = ieee->iw_mode;
 return 0;
}
