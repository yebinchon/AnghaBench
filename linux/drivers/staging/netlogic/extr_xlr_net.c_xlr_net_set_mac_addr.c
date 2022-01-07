
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int eth_mac_addr (struct net_device*,void*) ;
 int xlr_hw_set_mac_addr (struct net_device*) ;

__attribute__((used)) static int xlr_net_set_mac_addr(struct net_device *ndev, void *data)
{
 int err;

 err = eth_mac_addr(ndev, data);
 if (err)
  return err;
 xlr_hw_set_mac_addr(ndev);
 return 0;
}
