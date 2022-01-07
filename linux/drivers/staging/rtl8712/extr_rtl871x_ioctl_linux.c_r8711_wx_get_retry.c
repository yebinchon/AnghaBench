
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; int disabled; scalar_t__ fixed; } ;
union iwreq_data {TYPE_1__ retry; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;



__attribute__((used)) static int r8711_wx_get_retry(struct net_device *dev,
    struct iw_request_info *info,
    union iwreq_data *wrqu, char *extra)
{
 wrqu->retry.value = 7;
 wrqu->retry.fixed = 0;
 wrqu->retry.disabled = 1;
 return 0;
}
