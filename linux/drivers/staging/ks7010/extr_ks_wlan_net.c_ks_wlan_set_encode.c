
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iw_point {int flags; scalar_t__ length; int pointer; } ;
union iwreq_data {struct iw_point encoding; } ;
struct wep_key {scalar_t__ len; int * key; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int wep_index; int privacy_invoked; scalar_t__ authenticate_type; TYPE_1__* wep_key; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; int need_commit; TYPE_2__ reg; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_3__ {scalar_t__ size; int * val; } ;


 scalar_t__ AUTH_TYPE_OPEN_SYSTEM ;
 scalar_t__ AUTH_TYPE_SHARED_KEY ;
 int EFAULT ;
 int EINVAL ;
 int EPERM ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_INDEX ;
 int IW_ENCODE_MODE ;
 int IW_ENCODE_NOKEY ;
 int IW_ENCODE_OPEN ;
 int IW_ENCODE_RESTRICTED ;
 scalar_t__ MAX_KEY_SIZE ;
 scalar_t__ MIN_KEY_SIZE ;
 scalar_t__ SLP_SLEEP ;
 int SME_MODE_SET ;
 int SME_WEP_FLAG ;
 int SME_WEP_INDEX ;
 int SME_WEP_VAL1 ;
 int WEP_OFF ;
 int WEP_ON_128BIT ;
 int WEP_ON_64BIT ;
 scalar_t__ copy_from_user (int *,int ,scalar_t__) ;
 int ks_wlan_setup_parameter (struct ks_wlan_private*,int) ;
 int memcpy (int *,int *,scalar_t__) ;
 int memset (int *,int ,scalar_t__) ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;
 int wep_on_off ;

__attribute__((used)) static int ks_wlan_set_encode(struct net_device *dev,
         struct iw_request_info *info,
         union iwreq_data *dwrq, char *extra)
{
 struct ks_wlan_private *priv = netdev_priv(dev);
 struct iw_point *enc = &dwrq->encoding;
 struct wep_key key;
 int index = (enc->flags & IW_ENCODE_INDEX);

 if (priv->sleep_mode == SLP_SLEEP)
  return -EPERM;

 if (enc->length > MAX_KEY_SIZE)
  return -EINVAL;


 if ((index < 0) || (index > 4))
  return -EINVAL;

 index = (index == 0) ? priv->reg.wep_index : (index - 1);



 if (enc->length > 0) {
  key.len = (enc->length > MIN_KEY_SIZE) ?
      MAX_KEY_SIZE : MIN_KEY_SIZE;
  priv->reg.privacy_invoked = 0x01;
  priv->need_commit |= SME_WEP_FLAG;
  wep_on_off = (enc->length > MIN_KEY_SIZE) ?
         WEP_ON_128BIT : WEP_ON_64BIT;

  if (enc->flags & IW_ENCODE_NOKEY)
   return 0;


  memset(key.key, 0, MAX_KEY_SIZE);

  if (copy_from_user(key.key, enc->pointer, enc->length)) {
   key.len = 0;
   return -EFAULT;
  }

  priv->reg.wep_key[index].size = key.len;
  memcpy(&priv->reg.wep_key[index].val[0], &key.key[0],
         priv->reg.wep_key[index].size);
  priv->need_commit |= (SME_WEP_VAL1 << index);
  priv->reg.wep_index = index;
  priv->need_commit |= SME_WEP_INDEX;
 } else {
  if (enc->flags & IW_ENCODE_DISABLED) {
   priv->reg.wep_key[0].size = 0;
   priv->reg.wep_key[1].size = 0;
   priv->reg.wep_key[2].size = 0;
   priv->reg.wep_key[3].size = 0;
   priv->reg.privacy_invoked = 0x00;
   if (priv->reg.authenticate_type == AUTH_TYPE_SHARED_KEY)
    priv->need_commit |= SME_MODE_SET;

   priv->reg.authenticate_type = AUTH_TYPE_OPEN_SYSTEM;
   wep_on_off = WEP_OFF;
   priv->need_commit |= SME_WEP_FLAG;
  } else {

   if (priv->reg.wep_key[index].size == 0)
    return -EINVAL;
   priv->reg.wep_index = index;
   priv->need_commit |= SME_WEP_INDEX;
  }
 }


 if (enc->flags & IW_ENCODE_MODE)
  priv->need_commit |= SME_WEP_FLAG;

 if (enc->flags & IW_ENCODE_OPEN) {
  if (priv->reg.authenticate_type == AUTH_TYPE_SHARED_KEY)
   priv->need_commit |= SME_MODE_SET;

  priv->reg.authenticate_type = AUTH_TYPE_OPEN_SYSTEM;
 } else if (enc->flags & IW_ENCODE_RESTRICTED) {
  if (priv->reg.authenticate_type == AUTH_TYPE_OPEN_SYSTEM)
   priv->need_commit |= SME_MODE_SET;

  priv->reg.authenticate_type = AUTH_TYPE_SHARED_KEY;
 }
 if (priv->need_commit) {
  ks_wlan_setup_parameter(priv, priv->need_commit);
  priv->need_commit = 0;
 }
 return 0;
}
