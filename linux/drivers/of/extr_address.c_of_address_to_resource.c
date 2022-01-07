
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct resource {int dummy; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int EINVAL ;
 int __of_address_to_resource (struct device_node*,int const*,int ,unsigned int,char const*,struct resource*) ;
 int * of_get_address (struct device_node*,int,int *,unsigned int*) ;
 int of_property_read_string_index (struct device_node*,char*,int,char const**) ;

int of_address_to_resource(struct device_node *dev, int index,
      struct resource *r)
{
 const __be32 *addrp;
 u64 size;
 unsigned int flags;
 const char *name = ((void*)0);

 addrp = of_get_address(dev, index, &size, &flags);
 if (addrp == ((void*)0))
  return -EINVAL;


 of_property_read_string_index(dev, "reg-names", index, &name);

 return __of_address_to_resource(dev, addrp, size, flags, name, r);
}
