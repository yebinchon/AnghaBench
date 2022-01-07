
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_point {int flags; } ;
union iwreq_data {struct iw_point encoding; } ;
struct net_device {int name; } ;
struct iw_request_info {int dummy; } ;
struct iw_encode_ext {int ext_flags; int alg; scalar_t__ key_len; int rx_seq; int key; } ;
struct ieee80211_security {int enabled; int active_key; scalar_t__* key_sizes; int flags; int level; } ;
struct ieee80211_device {int tx_keyidx; scalar_t__ iw_mode; scalar_t__ (* reset_port ) (struct net_device*) ;scalar_t__ reset_on_keychange; struct net_device* dev; int (* set_security ) (struct net_device*,struct ieee80211_security*) ;struct ieee80211_crypt_data** crypt; } ;
struct ieee80211_crypto_ops {scalar_t__ (* set_key ) (int ,scalar_t__,int ,int ) ;int (* init ) (int) ;int owner; } ;
struct ieee80211_crypt_data {int priv; struct ieee80211_crypto_ops* ops; } ;


 int BIT (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IEEE80211_DEBUG_WX (char*,int ,...) ;

 int IW_ENCODE_ALG_NONE ;


 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_EXT_GROUP_KEY ;
 int IW_ENCODE_EXT_SET_TX_KEY ;
 int IW_ENCODE_INDEX ;
 scalar_t__ IW_MODE_INFRA ;
 int SEC_ACTIVE_KEY ;
 int SEC_ENABLED ;
 int SEC_LEVEL ;
 int SEC_LEVEL_0 ;
 int SEC_LEVEL_1 ;
 int SEC_LEVEL_2 ;
 int SEC_LEVEL_3 ;
 int WEP_KEYS ;
 int ieee80211_crypt_delayed_deinit (struct ieee80211_device*,struct ieee80211_crypt_data**) ;
 int ieee80211_get_crypto_ops (char const*) ;
 int kfree (struct ieee80211_crypt_data*) ;
 struct ieee80211_crypt_data* kzalloc (int,int ) ;
 int printk (char*,...) ;
 int stub1 (int) ;
 scalar_t__ stub2 (int ,scalar_t__,int ,int ) ;
 int stub3 (struct net_device*,struct ieee80211_security*) ;
 scalar_t__ stub4 (struct net_device*) ;
 scalar_t__ try_module_get (int ) ;
 struct ieee80211_crypto_ops* try_then_request_module (int ,char const*) ;

int ieee80211_wx_set_encode_ext(struct ieee80211_device *ieee,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{
 int ret = 0;
 struct net_device *dev = ieee->dev;
 struct iw_point *encoding = &wrqu->encoding;
 struct iw_encode_ext *ext = (struct iw_encode_ext *)extra;
 int i, idx;
 int group_key = 0;
 const char *alg, *module;
 struct ieee80211_crypto_ops *ops;
 struct ieee80211_crypt_data **crypt;

 struct ieee80211_security sec = {
  .flags = 0,
 };
 idx = encoding->flags & IW_ENCODE_INDEX;
 if (idx) {
  if (idx < 1 || idx > WEP_KEYS)
   return -EINVAL;
  idx--;
 } else
  idx = ieee->tx_keyidx;

 if (ext->ext_flags & IW_ENCODE_EXT_GROUP_KEY) {

  crypt = &ieee->crypt[idx];

  group_key = 1;
 } else {

  if (idx != 0 && ext->alg != 128)
   return -EINVAL;
  if (ieee->iw_mode == IW_MODE_INFRA)

   crypt = &ieee->crypt[idx];

  else
   return -EINVAL;
 }

 sec.flags |= SEC_ENABLED;
 if ((encoding->flags & IW_ENCODE_DISABLED) ||
     ext->alg == IW_ENCODE_ALG_NONE) {
  if (*crypt)
   ieee80211_crypt_delayed_deinit(ieee, crypt);

  for (i = 0; i < WEP_KEYS; i++)

   if (ieee->crypt[i])

    break;

  if (i == WEP_KEYS) {
   sec.enabled = 0;

   sec.level = SEC_LEVEL_0;
   sec.flags |= SEC_LEVEL;
  }
  goto done;
 }

 sec.enabled = 1;

 switch (ext->alg) {
 case 128:
  alg = "WEP";
  module = "ieee80211_crypt_wep";
  break;
 case 129:
  alg = "TKIP";
  module = "ieee80211_crypt_tkip";
  break;
 case 130:
  alg = "CCMP";
  module = "ieee80211_crypt_ccmp";
  break;
 default:
  IEEE80211_DEBUG_WX("%s: unknown crypto alg %d\n",
       dev->name, ext->alg);
  ret = -EINVAL;
  goto done;
 }
 printk("alg name:%s\n", alg);

 ops = try_then_request_module(ieee80211_get_crypto_ops(alg), module);
 if (!ops) {
  IEEE80211_DEBUG_WX("%s: unknown crypto alg %d\n",
       dev->name, ext->alg);
  printk("========>unknown crypto alg %d\n", ext->alg);
  ret = -EINVAL;
  goto done;
 }

 if (!*crypt || (*crypt)->ops != ops) {
  struct ieee80211_crypt_data *new_crypt;

  ieee80211_crypt_delayed_deinit(ieee, crypt);

  new_crypt = kzalloc(sizeof(*new_crypt), GFP_KERNEL);
  if (!new_crypt) {
   ret = -ENOMEM;
   goto done;
  }
  new_crypt->ops = ops;
  if (new_crypt->ops && try_module_get(new_crypt->ops->owner))
   new_crypt->priv = new_crypt->ops->init(idx);
  if (!new_crypt->priv) {
   kfree(new_crypt);
   ret = -EINVAL;
   goto done;
  }
  *crypt = new_crypt;
 }

 if (ext->key_len > 0 && (*crypt)->ops->set_key &&
     (*crypt)->ops->set_key(ext->key, ext->key_len, ext->rx_seq,
       (*crypt)->priv) < 0) {
  IEEE80211_DEBUG_WX("%s: key setting failed\n", dev->name);
  printk("key setting failed\n");
  ret = -EINVAL;
  goto done;
 }

 if (ext->ext_flags & IW_ENCODE_EXT_SET_TX_KEY) {
  ieee->tx_keyidx = idx;
  sec.active_key = idx;
  sec.flags |= SEC_ACTIVE_KEY;
 }

 if (ext->alg != IW_ENCODE_ALG_NONE) {

  sec.key_sizes[idx] = ext->key_len;
  sec.flags |= BIT(idx);
  if (ext->alg == 128) {

   sec.flags |= SEC_LEVEL;
   sec.level = SEC_LEVEL_1;
  } else if (ext->alg == 129) {

   sec.flags |= SEC_LEVEL;
   sec.level = SEC_LEVEL_2;
  } else if (ext->alg == 130) {

   sec.flags |= SEC_LEVEL;
   sec.level = SEC_LEVEL_3;
  }

  if (group_key)
   sec.flags &= ~SEC_LEVEL;
 }
done:
 if (ieee->set_security)
  ieee->set_security(ieee->dev, &sec);

 if (ieee->reset_on_keychange &&
     ieee->iw_mode != IW_MODE_INFRA &&
     ieee->reset_port && ieee->reset_port(dev)) {
  IEEE80211_DEBUG_WX("%s: reset_port failed\n", dev->name);
  return -EINVAL;
 }
 return ret;
}
