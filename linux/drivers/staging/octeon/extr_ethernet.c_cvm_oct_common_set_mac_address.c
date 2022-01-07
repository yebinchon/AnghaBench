
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int cvm_oct_set_mac_filter (struct net_device*) ;
 int eth_mac_addr (struct net_device*,void*) ;

__attribute__((used)) static int cvm_oct_common_set_mac_address(struct net_device *dev, void *addr)
{
 int r = eth_mac_addr(dev, addr);

 if (r)
  return r;
 return cvm_oct_set_mac_filter(dev);
}
