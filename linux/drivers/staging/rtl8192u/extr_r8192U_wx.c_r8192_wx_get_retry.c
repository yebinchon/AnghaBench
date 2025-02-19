
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int value; scalar_t__ disabled; } ;
union iwreq_data {TYPE_1__ retry; } ;
struct r8192_priv {int retry_data; int retry_rts; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int EINVAL ;
 int IW_RETRY_LIFETIME ;
 int IW_RETRY_LIMIT ;
 int IW_RETRY_MAX ;
 int IW_RETRY_MIN ;
 int IW_RETRY_TYPE ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static int r8192_wx_get_retry(struct net_device *dev,
    struct iw_request_info *info,
    union iwreq_data *wrqu, char *extra)
{
 struct r8192_priv *priv = ieee80211_priv(dev);


 wrqu->retry.disabled = 0;

 if ((wrqu->retry.flags & IW_RETRY_TYPE) ==
     IW_RETRY_LIFETIME)
  return -EINVAL;

 if (wrqu->retry.flags & IW_RETRY_MAX) {
  wrqu->retry.flags = IW_RETRY_LIMIT | IW_RETRY_MAX;
  wrqu->retry.value = priv->retry_rts;
 } else {
  wrqu->retry.flags = IW_RETRY_LIMIT | IW_RETRY_MIN;
  wrqu->retry.value = priv->retry_data;
 }

 return 0;
}
