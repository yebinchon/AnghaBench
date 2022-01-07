
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int kobj; } ;


 int kobject_get (int *) ;

struct device_node *of_node_get(struct device_node *node)
{
 if (node)
  kobject_get(&node->kobj);
 return node;
}
