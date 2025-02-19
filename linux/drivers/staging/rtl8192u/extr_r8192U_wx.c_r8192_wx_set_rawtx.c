
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct r8192_priv {int wx_mutex; int ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int ieee80211_wx_set_rawtx (int ,struct iw_request_info*,union iwreq_data*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int r8192_wx_set_rawtx(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 int ret;

 mutex_lock(&priv->wx_mutex);

 ret = ieee80211_wx_set_rawtx(priv->ieee80211, info, wrqu, extra);

 mutex_unlock(&priv->wx_mutex);

 return ret;

}
