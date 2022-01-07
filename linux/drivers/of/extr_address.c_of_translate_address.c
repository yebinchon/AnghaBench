
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int OF_BAD_ADDR ;
 int __of_translate_address (struct device_node*,int ,int const*,char*,struct device_node**) ;
 int of_get_parent ;
 int of_node_put (struct device_node*) ;

u64 of_translate_address(struct device_node *dev, const __be32 *in_addr)
{
 struct device_node *host;
 u64 ret;

 ret = __of_translate_address(dev, of_get_parent,
         in_addr, "ranges", &host);
 if (host) {
  of_node_put(host);
  return OF_BAD_ADDR;
 }

 return ret;
}
