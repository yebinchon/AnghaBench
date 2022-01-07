
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct nic {TYPE_1__* phy_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int priv_dev; int (* send_hci_func ) (int ,void*,int,int *,int *) ;} ;


 struct nic* netdev_priv (struct net_device*) ;
 int stub1 (int ,void*,int,int *,int *) ;

__attribute__((used)) static void gdm_lte_event_rcv(struct net_device *dev, u16 type,
         void *msg, int len)
{
 struct nic *nic = netdev_priv(dev);

 nic->phy_dev->send_hci_func(nic->phy_dev->priv_dev, msg, len, ((void*)0),
        ((void*)0));
}
