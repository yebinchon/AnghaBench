
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int of_find_property (struct device_node*,char*,int *) ;

__attribute__((used)) static bool pmu_has_irq_affinity(struct device_node *node)
{
 return !!of_find_property(node, "interrupt-affinity", ((void*)0));
}
