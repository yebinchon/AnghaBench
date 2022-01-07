
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phonet_port {int lock; } ;
struct net_device {int dummy; } ;


 int ENOMEM ;
 struct net_device* ERR_PTR (int ) ;
 int NET_NAME_UNKNOWN ;
 struct net_device* alloc_netdev (int,char*,int ,int ) ;
 struct phonet_port* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int pn_net_setup ;
 int spin_lock_init (int *) ;

struct net_device *gphonet_setup_default(void)
{
 struct net_device *dev;
 struct phonet_port *port;


 dev = alloc_netdev(sizeof(*port), "upnlink%d", NET_NAME_UNKNOWN,
      pn_net_setup);
 if (!dev)
  return ERR_PTR(-ENOMEM);

 port = netdev_priv(dev);
 spin_lock_init(&port->lock);
 netif_carrier_off(dev);

 return dev;
}
