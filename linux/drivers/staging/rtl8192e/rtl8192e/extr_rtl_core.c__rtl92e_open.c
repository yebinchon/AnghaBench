
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int wx_mutex; } ;
struct net_device {int dummy; } ;


 int _rtl92e_try_up (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static int _rtl92e_open(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 int ret;

 mutex_lock(&priv->wx_mutex);
 ret = _rtl92e_try_up(dev);
 mutex_unlock(&priv->wx_mutex);
 return ret;

}
