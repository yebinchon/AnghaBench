
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; scalar_t__ value; scalar_t__ disabled; } ;
union iwreq_data {TYPE_1__ retry; } ;
struct r8192_priv {scalar_t__ retry_rts; scalar_t__ retry_data; int wx_mutex; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int DMESG (char*,scalar_t__) ;
 int EINVAL ;
 int IW_RETRY_LIFETIME ;
 int IW_RETRY_LIMIT ;
 int IW_RETRY_MAX ;
 scalar_t__ R8180_MAX_RETRY ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtl8192_commit (struct net_device*) ;

__attribute__((used)) static int r8192_wx_set_retry(struct net_device *dev,
    struct iw_request_info *info,
    union iwreq_data *wrqu, char *extra)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 int err = 0;

 mutex_lock(&priv->wx_mutex);

 if (wrqu->retry.flags & IW_RETRY_LIFETIME ||
     wrqu->retry.disabled){
  err = -EINVAL;
  goto exit;
 }
 if (!(wrqu->retry.flags & IW_RETRY_LIMIT)) {
  err = -EINVAL;
  goto exit;
 }

 if (wrqu->retry.value > R8180_MAX_RETRY) {
  err = -EINVAL;
  goto exit;
 }
 if (wrqu->retry.flags & IW_RETRY_MAX) {
  priv->retry_rts = wrqu->retry.value;
  DMESG("Setting retry for RTS/CTS data to %d", wrqu->retry.value);

 } else {
  priv->retry_data = wrqu->retry.value;
  DMESG("Setting retry for non RTS/CTS data to %d", wrqu->retry.value);
 }







 rtl8192_commit(dev);
exit:
 mutex_unlock(&priv->wx_mutex);

 return err;
}
