
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct net_local {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int debug_flags; struct net_device* netif; } ;
typedef TYPE_1__ hysdn_card ;


 int LOG_NET_INIT ;
 int flush_tx_buffers (struct net_local*) ;
 int free_netdev (struct net_device*) ;
 int hysdn_addlog (TYPE_1__*,char*) ;
 int net_close (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

int
hysdn_net_release(hysdn_card *card)
{
 struct net_device *dev = card->netif;

 if (!dev)
  return (0);

 card->netif = ((void*)0);
 net_close(dev);

 flush_tx_buffers((struct net_local *) dev);

 unregister_netdev(dev);
 free_netdev(dev);
 if (card->debug_flags & LOG_NET_INIT)
  hysdn_addlog(card, "network device deleted");

 return (0);
}
