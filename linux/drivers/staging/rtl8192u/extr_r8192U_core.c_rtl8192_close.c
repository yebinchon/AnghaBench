
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int wx_mutex; } ;
struct net_device {int dummy; } ;


 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtl8192_down (struct net_device*) ;

__attribute__((used)) static int rtl8192_close(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 int ret;

 mutex_lock(&priv->wx_mutex);

 ret = rtl8192_down(dev);

 mutex_unlock(&priv->wx_mutex);

 return ret;
}
