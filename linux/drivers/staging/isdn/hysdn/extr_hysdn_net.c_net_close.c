
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_local {int dummy; } ;
struct net_device {int dummy; } ;


 int flush_tx_buffers (struct net_local*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int
net_close(struct net_device *dev)
{

 netif_stop_queue(dev);

 flush_tx_buffers((struct net_local *) dev);

 return (0);
}
