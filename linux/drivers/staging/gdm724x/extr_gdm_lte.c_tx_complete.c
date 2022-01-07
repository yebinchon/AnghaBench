
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nic {int netdev; } ;


 scalar_t__ netif_queue_stopped (int ) ;
 int netif_wake_queue (int ) ;

__attribute__((used)) static void tx_complete(void *arg)
{
 struct nic *nic = arg;

 if (netif_queue_stopped(nic->netdev))
  netif_wake_queue(nic->netdev);
}
