
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int up; } ;
struct net_device {int dummy; } ;


 int _rtl92e_up (struct net_device*,int) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static int _rtl92e_try_up(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 if (priv->up == 1)
  return -1;
 return _rtl92e_up(dev, 0);
}
