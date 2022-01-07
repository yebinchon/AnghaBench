
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct r8192_priv {int wx_mutex; struct ieee80211_device* ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_point {int length; int pointer; } ;
struct TYPE_6__ {struct iw_point data; } ;
struct iwreq {TYPE_3__ u; } ;
struct ifreq {int dummy; } ;
struct TYPE_4__ {int key_len; int idx; int alg; int key; int set_tx; } ;
struct TYPE_5__ {TYPE_1__ crypt; } ;
struct ieee_param {TYPE_2__ u; int cmd; } ;
struct ieee80211_device {int auth_mode; void* group_key_type; scalar_t__ ap_mac_addr; void* pairwise_key_type; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int EnableHWSecurityConfig8192 (struct net_device*) ;
 int IEEE_CMD_SET_ENCRYPTION ;
 scalar_t__ IS_ERR (struct ieee_param*) ;
 void* KEY_TYPE_CCMP ;
 void* KEY_TYPE_NA ;
 void* KEY_TYPE_TKIP ;
 void* KEY_TYPE_WEP104 ;
 void* KEY_TYPE_WEP40 ;
 int PTR_ERR (struct ieee_param*) ;

 scalar_t__ ieee80211_priv (struct net_device*) ;
 int ieee80211_wpa_supplicant_ioctl (struct ieee80211_device*,struct iw_point*) ;
 int kfree (struct ieee_param*) ;
 int memcpy (int*,int ,int) ;
 struct ieee_param* memdup_user (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int setKey (struct net_device*,int,int,void*,int*,int ,int *) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int rtl8192_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 struct iwreq *wrq = (struct iwreq *)rq;
 int ret = -1;
 struct ieee80211_device *ieee = priv->ieee80211;
 u32 key[4];
 u8 broadcast_addr[6] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
 struct iw_point *p = &wrq->u.data;
 struct ieee_param *ipw = ((void*)0);

 mutex_lock(&priv->wx_mutex);


 if (p->length < sizeof(struct ieee_param) || !p->pointer) {
  ret = -EINVAL;
  goto out;
 }

 ipw = memdup_user(p->pointer, p->length);
 if (IS_ERR(ipw)) {
  ret = PTR_ERR(ipw);
  goto out;
 }

 switch (cmd) {
 case 128:

  if (ipw->cmd == IEEE_CMD_SET_ENCRYPTION) {
   if (ipw->u.crypt.set_tx) {
    if (strcmp(ipw->u.crypt.alg, "CCMP") == 0) {
     ieee->pairwise_key_type = KEY_TYPE_CCMP;
    } else if (strcmp(ipw->u.crypt.alg, "TKIP") == 0) {
     ieee->pairwise_key_type = KEY_TYPE_TKIP;
    } else if (strcmp(ipw->u.crypt.alg, "WEP") == 0) {
     if (ipw->u.crypt.key_len == 13)
      ieee->pairwise_key_type = KEY_TYPE_WEP104;
     else if (ipw->u.crypt.key_len == 5)
      ieee->pairwise_key_type = KEY_TYPE_WEP40;
    } else {
     ieee->pairwise_key_type = KEY_TYPE_NA;
    }

    if (ieee->pairwise_key_type) {
     memcpy((u8 *)key, ipw->u.crypt.key, 16);
     EnableHWSecurityConfig8192(dev);






     setKey(dev, 4, ipw->u.crypt.idx,
            ieee->pairwise_key_type,
            (u8 *)ieee->ap_mac_addr,
            0, key);
     if (ieee->auth_mode != 2)
      setKey(dev, ipw->u.crypt.idx,
             ipw->u.crypt.idx,
             ieee->pairwise_key_type,
             (u8 *)ieee->ap_mac_addr,
             0, key);
    }
   } else {
    memcpy((u8 *)key, ipw->u.crypt.key, 16);
    if (strcmp(ipw->u.crypt.alg, "CCMP") == 0) {
     ieee->group_key_type = KEY_TYPE_CCMP;
    } else if (strcmp(ipw->u.crypt.alg, "TKIP") == 0) {
     ieee->group_key_type = KEY_TYPE_TKIP;
    } else if (strcmp(ipw->u.crypt.alg, "WEP") == 0) {
     if (ipw->u.crypt.key_len == 13)
      ieee->group_key_type = KEY_TYPE_WEP104;
     else if (ipw->u.crypt.key_len == 5)
      ieee->group_key_type = KEY_TYPE_WEP40;
    } else {
     ieee->group_key_type = KEY_TYPE_NA;
    }

    if (ieee->group_key_type) {
     setKey(dev, ipw->u.crypt.idx,

            ipw->u.crypt.idx,

            ieee->group_key_type,

            broadcast_addr,

            0,

            key);
    }
   }
  }
  ret = ieee80211_wpa_supplicant_ioctl(priv->ieee80211,
           &wrq->u.data);
  break;

 default:
  ret = -EOPNOTSUPP;
  break;
 }
 kfree(ipw);
 ipw = ((void*)0);
out:
 mutex_unlock(&priv->wx_mutex);
 return ret;
}
