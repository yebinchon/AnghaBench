
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int mac_init_fn(struct net_device *ndev)
{
 netif_start_queue(ndev);
 netif_stop_queue(ndev);

 return 0;
}
