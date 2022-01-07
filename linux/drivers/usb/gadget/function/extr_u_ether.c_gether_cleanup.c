
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eth_dev {int net; int work; } ;


 int flush_work (int *) ;
 int free_netdev (int ) ;
 int unregister_netdev (int ) ;

void gether_cleanup(struct eth_dev *dev)
{
 if (!dev)
  return;

 unregister_netdev(dev->net);
 flush_work(&dev->work);
 free_netdev(dev->net);
}
