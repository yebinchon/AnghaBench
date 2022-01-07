
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
typedef int __be32 ;


 int be32_to_cpu (int const) ;
 struct device_node* of_get_next_child (struct device_node const*,struct device_node*) ;
 int * of_get_property (struct device_node*,char*,int*) ;

__attribute__((used)) static struct device_node *cvm_oct_of_get_child
    (const struct device_node *parent, int reg_val)
{
 struct device_node *node = ((void*)0);
 int size;
 const __be32 *addr;

 for (;;) {
  node = of_get_next_child(parent, node);
  if (!node)
   break;
  addr = of_get_property(node, "reg", &size);
  if (addr && (be32_to_cpu(*addr) == reg_val))
   break;
 }
 return node;
}
