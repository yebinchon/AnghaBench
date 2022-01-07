
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iw_param {int flags; int value; } ;
union iwreq_data {struct iw_param param; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int rsn_enabled; int auth_alg; int key_mgmt_suite; int group_suite; int pairwise_suite; int version; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; TYPE_1__ wpa; } ;
struct iw_request_info {int dummy; } ;


 int EPERM ;




 int IW_AUTH_INDEX ;





 scalar_t__ SLP_SLEEP ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks_wlan_get_auth_mode(struct net_device *dev,
     struct iw_request_info *info,
     union iwreq_data *vwrq, char *extra)
{
 struct ks_wlan_private *priv = netdev_priv(dev);
 struct iw_param *param = &vwrq->param;
 int index = (param->flags & IW_AUTH_INDEX);

 if (priv->sleep_mode == SLP_SLEEP)
  return -EPERM;



 switch (index) {
 case 128:
  param->value = priv->wpa.version;
  break;
 case 134:
  param->value = priv->wpa.pairwise_suite;
  break;
 case 135:
  param->value = priv->wpa.group_suite;
  break;
 case 132:
  param->value = priv->wpa.key_mgmt_suite;
  break;
 case 136:
  param->value = priv->wpa.auth_alg;
  break;
 case 129:
  param->value = priv->wpa.rsn_enabled;
  break;
 case 131:
 case 130:
 case 133:
 default:

  break;
 }
 return 0;
}
