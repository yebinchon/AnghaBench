
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_find_node_by_path (char*) ;
 int * of_find_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int has_fsl_hypervisor(void)
{
 struct device_node *node;
 int ret;

 node = of_find_node_by_path("/hypervisor");
 if (!node)
  return 0;

 ret = of_find_property(node, "fsl,hv-version", ((void*)0)) != ((void*)0);

 of_node_put(node);

 return ret;
}
