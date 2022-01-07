
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct r8192_priv {int wx_mutex; int ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int ieee80211_wx_set_gen_ie (int ,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int r8192_wx_set_gen_ie(struct net_device *dev,
     struct iw_request_info *info,
     union iwreq_data *data, char *extra)
{
 int ret = 0;
 struct r8192_priv *priv = ieee80211_priv(dev);

 mutex_lock(&priv->wx_mutex);
 ret = ieee80211_wx_set_gen_ie(priv->ieee80211, extra, data->data.length);
 mutex_unlock(&priv->wx_mutex);
 return ret;


}
