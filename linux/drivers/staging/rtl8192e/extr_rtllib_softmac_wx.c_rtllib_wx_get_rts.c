
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ value; int disabled; scalar_t__ fixed; } ;
union iwreq_data {TYPE_1__ rts; } ;
struct rtllib_device {scalar_t__ rts; } ;
struct iw_request_info {int dummy; } ;


 scalar_t__ DEFAULT_RTS_THRESHOLD ;

int rtllib_wx_get_rts(struct rtllib_device *ieee,
        struct iw_request_info *info,
        union iwreq_data *wrqu, char *extra)
{
 wrqu->rts.value = ieee->rts;
 wrqu->rts.fixed = 0;
 wrqu->rts.disabled = (wrqu->rts.value == DEFAULT_RTS_THRESHOLD);
 return 0;
}
