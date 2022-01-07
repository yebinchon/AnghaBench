
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iw_param {int flags; int value; } ;
union iwreq_data {struct iw_param param; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int privacy_invoked; int authenticate_type; } ;
struct TYPE_3__ {int version; int rsn_enabled; int pairwise_suite; int group_suite; int key_mgmt_suite; int auth_alg; int wpa_enabled; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; scalar_t__ need_commit; TYPE_2__ reg; TYPE_1__ wpa; } ;
struct iw_request_info {int dummy; } ;


 int AUTH_TYPE_OPEN_SYSTEM ;
 int AUTH_TYPE_SHARED_KEY ;
 int EOPNOTSUPP ;
 int EPERM ;
 int IW_AUTH_INDEX ;
 scalar_t__ SLP_SLEEP ;
 scalar_t__ SME_MODE_SET ;
 scalar_t__ SME_RSN ;
 scalar_t__ SME_RSN_AUTH ;
 scalar_t__ SME_RSN_MULTICAST ;
 scalar_t__ SME_RSN_UNICAST ;
 scalar_t__ SME_WEP_FLAG ;
 int ks_wlan_setup_parameter (struct ks_wlan_private*,scalar_t__) ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks_wlan_set_auth_mode(struct net_device *dev,
     struct iw_request_info *info,
     union iwreq_data *vwrq, char *extra)
{
 struct ks_wlan_private *priv = netdev_priv(dev);
 struct iw_param *param = &vwrq->param;
 int index = (param->flags & IW_AUTH_INDEX);
 int value = param->value;

 if (priv->sleep_mode == SLP_SLEEP)
  return -EPERM;

 switch (index) {
 case 131:
  switch (value) {
  case 130:
   priv->wpa.version = value;
   if (priv->wpa.rsn_enabled)
    priv->wpa.rsn_enabled = 0;
   priv->need_commit |= SME_RSN;
   break;
  case 129:
  case 128:
   priv->wpa.version = value;
   if (!(priv->wpa.rsn_enabled))
    priv->wpa.rsn_enabled = 1;
   priv->need_commit |= SME_RSN;
   break;
  default:
   return -EOPNOTSUPP;
  }
  break;
 case 144:
  switch (value) {
  case 145:
   if (priv->reg.privacy_invoked) {
    priv->reg.privacy_invoked = 0x00;
    priv->need_commit |= SME_WEP_FLAG;
   }
   break;
  case 141:
  case 143:
  case 147:
  case 142:
   if (!priv->reg.privacy_invoked) {
    priv->reg.privacy_invoked = 0x01;
    priv->need_commit |= SME_WEP_FLAG;
   }
   priv->wpa.pairwise_suite = value;
   priv->need_commit |= SME_RSN_UNICAST;
   break;
  default:
   return -EOPNOTSUPP;
  }
  break;
 case 146:
  switch (value) {
  case 145:
   if (priv->reg.privacy_invoked) {
    priv->reg.privacy_invoked = 0x00;
    priv->need_commit |= SME_WEP_FLAG;
   }
   break;
  case 141:
  case 143:
  case 147:
  case 142:
   if (!priv->reg.privacy_invoked) {
    priv->reg.privacy_invoked = 0x01;
    priv->need_commit |= SME_WEP_FLAG;
   }
   priv->wpa.group_suite = value;
   priv->need_commit |= SME_RSN_MULTICAST;
   break;
  default:
   return -EOPNOTSUPP;
  }
  break;
 case 139:
  switch (value) {
  case 138:
  case 137:
  case 0:
  case 4:
   priv->wpa.key_mgmt_suite = value;
   priv->need_commit |= SME_RSN_AUTH;
   break;
  default:
   return -EOPNOTSUPP;
  }
  break;
 case 151:
  switch (value) {
  case 149:
   priv->wpa.auth_alg = value;
   priv->reg.authenticate_type = AUTH_TYPE_OPEN_SYSTEM;
   break;
  case 148:
   priv->wpa.auth_alg = value;
   priv->reg.authenticate_type = AUTH_TYPE_SHARED_KEY;
   break;
  case 150:
  default:
   return -EOPNOTSUPP;
  }
  priv->need_commit |= SME_MODE_SET;
  break;
 case 132:
  priv->wpa.wpa_enabled = value;
  break;
 case 136:
  if ((value && !priv->reg.privacy_invoked) ||
      (!value && priv->reg.privacy_invoked)) {
   priv->reg.privacy_invoked = value ? 0x01 : 0x00;
   priv->need_commit |= SME_WEP_FLAG;
  }
  break;
 case 134:
 case 133:
 case 140:
 case 135:
 default:
  break;
 }


 if (priv->need_commit) {
  ks_wlan_setup_parameter(priv, priv->need_commit);
  priv->need_commit = 0;
 }
 return 0;
}
