
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state_initialized; } ;
struct device_node {TYPE_1__ kobj; } ;



__attribute__((used)) static int of_node_is_initialized(struct device_node *node)
{
 return node && node->kobj.state_initialized;
}
