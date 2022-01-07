
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct device_node {int fwnode; } ;
typedef int __be32 ;


 unsigned long OF_BAD_ADDR ;
 unsigned long __of_translate_address (struct device_node*,int ,int const*,char*,struct device_node**) ;
 unsigned long logic_pio_trans_hwaddr (int *,unsigned long,unsigned long) ;
 int of_get_parent ;
 int of_node_put (struct device_node*) ;
 unsigned long pci_address_to_pio (unsigned long) ;

__attribute__((used)) static u64 of_translate_ioport(struct device_node *dev, const __be32 *in_addr,
   u64 size)
{
 u64 taddr;
 unsigned long port;
 struct device_node *host;

 taddr = __of_translate_address(dev, of_get_parent,
           in_addr, "ranges", &host);
 if (host) {

  port = logic_pio_trans_hwaddr(&host->fwnode, taddr, size);
  of_node_put(host);
 } else {

  port = pci_address_to_pio(taddr);
 }

 if (port == (unsigned long)-1)
  return OF_BAD_ADDR;

 return port;
}
