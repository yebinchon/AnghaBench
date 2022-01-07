
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int* dev_addr; struct in_device* ip_ptr; TYPE_1__* ml_priv; } ;
struct in_ifaddr {int ifa_local; } ;
struct in_device {int ifa_list; } ;
struct TYPE_2__ {int * mac_addr; } ;
typedef TYPE_1__ hysdn_card ;


 int ETH_ALEN ;
 int memcpy (int*,int *,int) ;
 int netif_start_queue (struct net_device*) ;
 struct in_ifaddr* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int
net_open(struct net_device *dev)
{
 struct in_device *in_dev;
 hysdn_card *card = dev->ml_priv;
 int i;

 netif_start_queue(dev);


 if (!card->mac_addr[0]) {
  for (i = 0; i < ETH_ALEN; i++)
   dev->dev_addr[i] = 0xfc;
  if ((in_dev = dev->ip_ptr) != ((void*)0)) {
   const struct in_ifaddr *ifa;

   rcu_read_lock();
   ifa = rcu_dereference(in_dev->ifa_list);
   if (ifa != ((void*)0))
    memcpy(dev->dev_addr + (ETH_ALEN - sizeof(ifa->ifa_local)), &ifa->ifa_local, sizeof(ifa->ifa_local));
   rcu_read_unlock();
  }
 } else
  memcpy(dev->dev_addr, card->mac_addr, ETH_ALEN);

 return (0);
}
