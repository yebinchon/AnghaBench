
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_group {int dummy; } ;


 int vfio_group_put (struct vfio_group*) ;
 int vfio_group_try_dissolve_container (struct vfio_group*) ;

void vfio_group_put_external_user(struct vfio_group *group)
{
 vfio_group_try_dissolve_container(group);
 vfio_group_put(group);
}
