
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {short promisc; } ;
struct net_device {int flags; } ;


 int IFF_PROMISC ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static void _rtl92e_set_multicast(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 short promisc;

 promisc = (dev->flags & IFF_PROMISC) ? 1 : 0;
 priv->promisc = promisc;

}
