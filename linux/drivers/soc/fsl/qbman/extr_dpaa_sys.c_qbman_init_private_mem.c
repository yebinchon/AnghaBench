
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reserved_mem {size_t base; size_t size; } ;
struct property {int length; int name; int * value; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;
typedef size_t dma_addr_t ;
typedef int __be32 ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_be32 (int ) ;
 int dev_err (struct device*,char*,...) ;
 int devm_kstrdup (struct device*,char*,int ) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int lower_32_bits (size_t) ;
 int of_add_property (struct device_node*,struct property*) ;
 struct property* of_find_property (struct device_node*,char*,int*) ;
 struct device_node* of_parse_phandle (int ,char*,int) ;
 struct reserved_mem* of_reserved_mem_lookup (struct device_node*) ;
 int upper_32_bits (size_t) ;

int qbman_init_private_mem(struct device *dev, int idx, dma_addr_t *addr,
    size_t *size)
{
 struct device_node *mem_node;
 struct reserved_mem *rmem;
 struct property *prop;
 int len, err;
 __be32 *res_array;

 mem_node = of_parse_phandle(dev->of_node, "memory-region", idx);
 if (!mem_node) {
  dev_err(dev, "No memory-region found for index %d\n", idx);
  return -ENODEV;
 }

 rmem = of_reserved_mem_lookup(mem_node);
 if (!rmem) {
  dev_err(dev, "of_reserved_mem_lookup() returned NULL\n");
  return -ENODEV;
 }
 *addr = rmem->base;
 *size = rmem->size;







 prop = of_find_property(mem_node, "reg", &len);
 if (!prop) {
  prop = devm_kzalloc(dev, sizeof(*prop), GFP_KERNEL);
  if (!prop)
   return -ENOMEM;
  prop->value = res_array = devm_kzalloc(dev, sizeof(__be32) * 4,
             GFP_KERNEL);
  if (!prop->value)
   return -ENOMEM;
  res_array[0] = cpu_to_be32(upper_32_bits(*addr));
  res_array[1] = cpu_to_be32(lower_32_bits(*addr));
  res_array[2] = cpu_to_be32(upper_32_bits(*size));
  res_array[3] = cpu_to_be32(lower_32_bits(*size));
  prop->length = sizeof(__be32) * 4;
  prop->name = devm_kstrdup(dev, "reg", GFP_KERNEL);
  if (!prop->name)
   return -ENOMEM;
  err = of_add_property(mem_node, prop);
  if (err)
   return err;
 }

 return 0;
}
