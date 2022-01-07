
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* alg; int idx; scalar_t__ err; int key_len; scalar_t__ key; scalar_t__ set_tx; int seq; } ;
struct TYPE_3__ {TYPE_2__ crypt; } ;
struct ieee_param {TYPE_1__ u; int sta_addr; } ;
struct ieee80211_security {int flags; int enabled; size_t active_key; int level; int * key_sizes; int * keys; } ;
struct ieee80211_device {size_t tx_keyidx; scalar_t__ iw_mode; int dev; scalar_t__ (* reset_port ) (int ) ;scalar_t__ reset_on_keychange; int (* set_security ) (int ,struct ieee80211_security*) ;scalar_t__ host_decrypt; scalar_t__ host_encrypt; struct ieee80211_crypt_data** crypt; } ;
struct ieee80211_crypto_ops {scalar_t__ (* set_key ) (scalar_t__,int ,int ,int ) ;int (* init ) (size_t) ;int owner; } ;
struct ieee80211_crypt_data {int priv; struct ieee80211_crypto_ops* ops; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IEEE_CRYPT_ALG_NAME_LEN ;
 scalar_t__ IEEE_CRYPT_ERR_CARD_CONF_FAILED ;
 scalar_t__ IEEE_CRYPT_ERR_CRYPT_INIT_FAILED ;
 scalar_t__ IEEE_CRYPT_ERR_KEY_SET_FAILED ;
 scalar_t__ IEEE_CRYPT_ERR_UNKNOWN_ALG ;
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
 int ieee80211_get_crypto_ops (char*) ;
 scalar_t__ is_broadcast_ether_addr (int ) ;
 int kfree (struct ieee80211_crypt_data*) ;
 struct ieee80211_crypt_data* kzalloc (int,int ) ;
 int memcpy (int ,scalar_t__,int ) ;
 int printk (char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int stub1 (size_t) ;
 scalar_t__ stub2 (scalar_t__,int ,int ,int ) ;
 int stub3 (int ,struct ieee80211_security*) ;
 scalar_t__ stub4 (int ) ;
 scalar_t__ try_module_get (int ) ;
 struct ieee80211_crypto_ops* try_then_request_module (int ,char const*) ;

__attribute__((used)) static int ieee80211_wpa_set_encryption(struct ieee80211_device *ieee,
      struct ieee_param *param, int param_len)
{
 int ret = 0;
 const char *module = ((void*)0);

 struct ieee80211_crypto_ops *ops = ((void*)0);
 struct ieee80211_crypt_data **crypt;

 struct ieee80211_security sec = {
  .flags = 0,
 };

 param->u.crypt.err = 0;
 param->u.crypt.alg[IEEE_CRYPT_ALG_NAME_LEN - 1] = '\0';

 if (param_len !=
     (int)((char *)param->u.crypt.key - (char *)param) +
     param->u.crypt.key_len) {
  printk("Len mismatch %d, %d\n", param_len,
          param->u.crypt.key_len);
  return -EINVAL;
 }
 if (is_broadcast_ether_addr(param->sta_addr)) {
  if (param->u.crypt.idx >= WEP_KEYS)
   return -EINVAL;
  crypt = &ieee->crypt[param->u.crypt.idx];
 } else {
  return -EINVAL;
 }

 if (strcmp(param->u.crypt.alg, "none") == 0) {
  if (crypt) {
   sec.enabled = 0;


   sec.level = SEC_LEVEL_0;
   sec.flags |= SEC_ENABLED | SEC_LEVEL;
   ieee80211_crypt_delayed_deinit(ieee, crypt);
  }
  goto done;
 }
 sec.enabled = 1;


 sec.flags |= SEC_ENABLED;


 if (!(ieee->host_encrypt || ieee->host_decrypt) &&
     strcmp(param->u.crypt.alg, "TKIP"))
  goto skip_host_crypt;


 if (!strcmp(param->u.crypt.alg, "WEP"))
  module = "ieee80211_crypt_wep";
 else if (!strcmp(param->u.crypt.alg, "TKIP"))
  module = "ieee80211_crypt_tkip";
 else if (!strcmp(param->u.crypt.alg, "CCMP"))
  module = "ieee80211_crypt_ccmp";
 if (module)
  ops = try_then_request_module(ieee80211_get_crypto_ops(param->u.crypt.alg),
           module);
 if (!ops) {
  printk("unknown crypto alg '%s'\n", param->u.crypt.alg);
  param->u.crypt.err = IEEE_CRYPT_ERR_UNKNOWN_ALG;
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
   new_crypt->priv =
    new_crypt->ops->init(param->u.crypt.idx);

  if (!new_crypt->priv) {
   kfree(new_crypt);
   param->u.crypt.err = IEEE_CRYPT_ERR_CRYPT_INIT_FAILED;
   ret = -EINVAL;
   goto done;
  }

  *crypt = new_crypt;
 }

 if (param->u.crypt.key_len > 0 && (*crypt)->ops->set_key &&
     (*crypt)->ops->set_key(param->u.crypt.key,
       param->u.crypt.key_len, param->u.crypt.seq,
       (*crypt)->priv) < 0) {
  printk("key setting failed\n");
  param->u.crypt.err = IEEE_CRYPT_ERR_KEY_SET_FAILED;
  ret = -EINVAL;
  goto done;
 }

 skip_host_crypt:
 if (param->u.crypt.set_tx) {
  ieee->tx_keyidx = param->u.crypt.idx;
  sec.active_key = param->u.crypt.idx;
  sec.flags |= SEC_ACTIVE_KEY;
 } else {
  sec.flags &= ~SEC_ACTIVE_KEY;
 }
 memcpy(sec.keys[param->u.crypt.idx],
        param->u.crypt.key,
        param->u.crypt.key_len);
 sec.key_sizes[param->u.crypt.idx] = param->u.crypt.key_len;
 sec.flags |= (1 << param->u.crypt.idx);

 if (strcmp(param->u.crypt.alg, "WEP") == 0) {
  sec.flags |= SEC_LEVEL;
  sec.level = SEC_LEVEL_1;
 } else if (strcmp(param->u.crypt.alg, "TKIP") == 0) {
  sec.flags |= SEC_LEVEL;
  sec.level = SEC_LEVEL_2;
 } else if (strcmp(param->u.crypt.alg, "CCMP") == 0) {
  sec.flags |= SEC_LEVEL;
  sec.level = SEC_LEVEL_3;
 }
 done:
 if (ieee->set_security)
  ieee->set_security(ieee->dev, &sec);






 if (ieee->reset_on_keychange &&
     ieee->iw_mode != IW_MODE_INFRA &&
     ieee->reset_port &&
     ieee->reset_port(ieee->dev)) {
  printk("reset_port failed\n");
  param->u.crypt.err = IEEE_CRYPT_ERR_CARD_CONF_FAILED;
  return -EINVAL;
 }

 return ret;
}
