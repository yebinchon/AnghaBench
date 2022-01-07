
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fixed; int value; } ;
union iwreq_data {TYPE_2__ frag; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_3__ {int frag_len; } ;
struct _adapter {TYPE_1__ xmitpriv; } ;


 struct _adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int r8711_wx_get_frag(struct net_device *dev,
    struct iw_request_info *info,
    union iwreq_data *wrqu, char *extra)
{
 struct _adapter *padapter = netdev_priv(dev);

 wrqu->frag.value = padapter->xmitpriv.frag_len;
 wrqu->frag.fixed = 0;
 return 0;
}
