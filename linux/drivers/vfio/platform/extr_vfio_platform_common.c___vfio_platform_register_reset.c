
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_reset_node {int link; } ;


 int driver_lock ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reset_list ;

void __vfio_platform_register_reset(struct vfio_platform_reset_node *node)
{
 mutex_lock(&driver_lock);
 list_add(&node->link, &reset_list);
 mutex_unlock(&driver_lock);
}
