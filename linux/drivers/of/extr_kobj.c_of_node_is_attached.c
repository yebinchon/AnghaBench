
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state_in_sysfs; } ;
struct device_node {TYPE_1__ kobj; } ;



int of_node_is_attached(struct device_node *node)
{
 return node && node->kobj.state_in_sysfs;
}
