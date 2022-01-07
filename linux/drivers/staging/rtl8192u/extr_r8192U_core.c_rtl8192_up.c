
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int up; } ;
struct net_device {int dummy; } ;


 int _rtl8192_up (struct net_device*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

int rtl8192_up(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 if (priv->up == 1)
  return -1;

 return _rtl8192_up(dev);
}
