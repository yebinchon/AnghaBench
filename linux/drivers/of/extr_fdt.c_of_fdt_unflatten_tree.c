
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 void* __unflatten_device_tree (unsigned long const*,struct device_node*,struct device_node**,int *,int) ;
 int kernel_tree_alloc ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_fdt_unflatten_mutex ;

void *of_fdt_unflatten_tree(const unsigned long *blob,
       struct device_node *dad,
       struct device_node **mynodes)
{
 void *mem;

 mutex_lock(&of_fdt_unflatten_mutex);
 mem = __unflatten_device_tree(blob, dad, mynodes, &kernel_tree_alloc,
          1);
 mutex_unlock(&of_fdt_unflatten_mutex);

 return mem;
}
