
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iw_point {int flags; } ;
union iwreq_data {struct iw_point encoding; } ;
struct rtllib_security {int flags; int enabled; int active_key; scalar_t__* key_sizes; int level; } ;
struct TYPE_2__ {int tx_keyidx; struct lib80211_crypt_data** crypt; } ;
struct rtllib_device {scalar_t__ iw_mode; struct net_device* dev; scalar_t__ (* reset_port ) (struct net_device*) ;scalar_t__ reset_on_keychange; int (* set_security ) (struct net_device*,struct rtllib_security*) ;TYPE_1__ crypt_info; } ;
struct net_device {int dummy; } ;
struct lib80211_crypto_ops {scalar_t__ (* set_key ) (int ,scalar_t__,int ,int *) ;int * (* init ) (int) ;int owner; } ;
struct lib80211_crypt_data {int * priv; struct lib80211_crypto_ops* ops; } ;
struct iw_request_info {int dummy; } ;
struct iw_encode_ext {int ext_flags; int alg; scalar_t__ key_len; int rx_seq; int key; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;

 int IW_ENCODE_ALG_NONE ;


 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_EXT_GROUP_KEY ;
 int IW_ENCODE_EXT_SET_TX_KEY ;
 int IW_ENCODE_INDEX ;
 scalar_t__ IW_MODE_INFRA ;
 int NUM_WEP_KEYS ;
 int SEC_ACTIVE_KEY ;
 int SEC_ENABLED ;
 int SEC_LEVEL ;
 int SEC_LEVEL_0 ;
 int SEC_LEVEL_1 ;
 int SEC_LEVEL_2 ;
 int SEC_LEVEL_3 ;
 int kfree (struct lib80211_crypt_data*) ;
 struct lib80211_crypt_data* kzalloc (int,int ) ;
 int lib80211_crypt_delayed_deinit (TYPE_1__*,struct lib80211_crypt_data**) ;
 struct lib80211_crypto_ops* lib80211_get_crypto_ops (char const*) ;
 int memset (char*,int,int) ;
 int netdev_dbg (struct net_device*,char*,...) ;
 int netdev_info (struct net_device*,char*,...) ;
 int request_module (char*,char*) ;
 int sprintf (char*,char*,char const*) ;
 int * stub1 (int) ;
 scalar_t__ stub2 (int ,scalar_t__,int ,int *) ;
 int stub3 (struct net_device*,struct rtllib_security*) ;
 scalar_t__ stub4 (struct net_device*) ;
 scalar_t__ try_module_get (int ) ;

int rtllib_wx_set_encode_ext(struct rtllib_device *ieee,
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
 struct lib80211_crypto_ops *ops;
 struct lib80211_crypt_data **crypt;

 struct rtllib_security sec = {
  .flags = 0,
 };
 idx = encoding->flags & IW_ENCODE_INDEX;
 if (idx) {
  if (idx < 1 || idx > NUM_WEP_KEYS)
   return -EINVAL;
  idx--;
 } else {
  idx = ieee->crypt_info.tx_keyidx;
 }
 if (ext->ext_flags & IW_ENCODE_EXT_GROUP_KEY) {
  crypt = &ieee->crypt_info.crypt[idx];
  group_key = 1;
 } else {

  if (idx != 0 && ext->alg != 128)
   return -EINVAL;
  if (ieee->iw_mode == IW_MODE_INFRA)
   crypt = &ieee->crypt_info.crypt[idx];
  else
   return -EINVAL;
 }

 sec.flags |= SEC_ENABLED;
 if ((encoding->flags & IW_ENCODE_DISABLED) ||
     ext->alg == IW_ENCODE_ALG_NONE) {
  if (*crypt)
   lib80211_crypt_delayed_deinit(&ieee->crypt_info, crypt);

  for (i = 0; i < NUM_WEP_KEYS; i++) {
   if (ieee->crypt_info.crypt[i] != ((void*)0))
    break;
  }
  if (i == NUM_WEP_KEYS) {
   sec.enabled = 0;
   sec.level = SEC_LEVEL_0;
   sec.flags |= SEC_LEVEL;
  }
  goto done;
 }

 sec.enabled = 1;
 switch (ext->alg) {
 case 128:
  alg = "R-WEP";
  module = "rtllib_crypt_wep";
  break;
 case 129:
  alg = "R-TKIP";
  module = "rtllib_crypt_tkip";
  break;
 case 130:
  alg = "R-CCMP";
  module = "rtllib_crypt_ccmp";
  break;
 default:
  netdev_dbg(ieee->dev, "Unknown crypto alg %d\n", ext->alg);
  ret = -EINVAL;
  goto done;
 }
 netdev_dbg(dev, "alg name:%s\n", alg);

 ops = lib80211_get_crypto_ops(alg);
 if (ops == ((void*)0)) {
  char tempbuf[100];

  memset(tempbuf, 0x00, 100);
  sprintf(tempbuf, "%s", module);
  request_module("%s", tempbuf);
  ops = lib80211_get_crypto_ops(alg);
 }
 if (ops == ((void*)0)) {
  netdev_info(dev, "========>unknown crypto alg %d\n", ext->alg);
  ret = -EINVAL;
  goto done;
 }

 if (*crypt == ((void*)0) || (*crypt)->ops != ops) {
  struct lib80211_crypt_data *new_crypt;

  lib80211_crypt_delayed_deinit(&ieee->crypt_info, crypt);

  new_crypt = kzalloc(sizeof(*new_crypt), GFP_KERNEL);
  if (new_crypt == ((void*)0)) {
   ret = -ENOMEM;
   goto done;
  }
  new_crypt->ops = ops;
  if (new_crypt->ops && try_module_get(new_crypt->ops->owner))
   new_crypt->priv = new_crypt->ops->init(idx);

  if (new_crypt->priv == ((void*)0)) {
   kfree(new_crypt);
   ret = -EINVAL;
   goto done;
  }
  *crypt = new_crypt;

 }

 if (ext->key_len > 0 && (*crypt)->ops->set_key &&
     (*crypt)->ops->set_key(ext->key, ext->key_len, ext->rx_seq,
       (*crypt)->priv) < 0) {
  netdev_info(dev, "key setting failed\n");
  ret = -EINVAL;
  goto done;
 }
 if (ext->ext_flags & IW_ENCODE_EXT_SET_TX_KEY) {
  ieee->crypt_info.tx_keyidx = idx;
  sec.active_key = idx;
  sec.flags |= SEC_ACTIVE_KEY;
 }
 if (ext->alg != IW_ENCODE_ALG_NONE) {
  sec.key_sizes[idx] = ext->key_len;
  sec.flags |= (1 << idx);
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
  netdev_dbg(ieee->dev, "Port reset failed\n");
  return -EINVAL;
 }
 return ret;
}
