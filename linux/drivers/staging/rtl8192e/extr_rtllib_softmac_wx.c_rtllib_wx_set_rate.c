
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union iwreq_data {TYPE_1__ bitrate; } ;
typedef int u32 ;
struct rtllib_device {int rate; } ;
struct iw_request_info {int dummy; } ;



int rtllib_wx_set_rate(struct rtllib_device *ieee,
        struct iw_request_info *info,
        union iwreq_data *wrqu, char *extra)
{

 u32 target_rate = wrqu->bitrate.value;

 ieee->rate = target_rate/100000;
 return 0;
}
