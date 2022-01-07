
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 void* of_get_mac_addr (struct device_node*,char*) ;
 void const* of_get_mac_addr_nvmem (struct device_node*) ;

const void *of_get_mac_address(struct device_node *np)
{
 const void *addr;

 addr = of_get_mac_addr(np, "mac-address");
 if (addr)
  return addr;

 addr = of_get_mac_addr(np, "local-mac-address");
 if (addr)
  return addr;

 addr = of_get_mac_addr(np, "address");
 if (addr)
  return addr;

 return of_get_mac_addr_nvmem(np);
}
