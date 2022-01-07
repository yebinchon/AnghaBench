
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_group {int container; } ;


 long vfio_ioctl_check_extension (int ,unsigned long) ;

long vfio_external_check_extension(struct vfio_group *group, unsigned long arg)
{
 return vfio_ioctl_check_extension(group->container, arg);
}
