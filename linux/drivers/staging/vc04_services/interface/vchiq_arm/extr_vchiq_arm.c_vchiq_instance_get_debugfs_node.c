
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vchiq_debugfs_node {int dummy; } ;
typedef TYPE_1__* VCHIQ_INSTANCE_T ;
struct TYPE_3__ {struct vchiq_debugfs_node debugfs_node; } ;



struct vchiq_debugfs_node *
vchiq_instance_get_debugfs_node(VCHIQ_INSTANCE_T instance)
{
 return &instance->debugfs_node;
}
