
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct _adapter {int dummy; } ;


 struct _adapter* netdev_priv (struct net_device*) ;
 int r871x_set_wpa_ie (struct _adapter*,char*,int ) ;

__attribute__((used)) static int r871x_wx_set_gen_ie(struct net_device *dev,
    struct iw_request_info *info,
    union iwreq_data *wrqu, char *extra)
{
 struct _adapter *padapter = netdev_priv(dev);

 return r871x_set_wpa_ie(padapter, extra, wrqu->data.length);
}
