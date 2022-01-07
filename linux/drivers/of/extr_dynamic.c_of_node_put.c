
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int kobj; } ;


 int kobject_put (int *) ;

void of_node_put(struct device_node *node)
{
 if (node)
  kobject_put(&node->kobj);
}
