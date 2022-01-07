
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_group {int opened; } ;
struct inode {int dummy; } ;
struct file {struct vfio_group* private_data; } ;


 int atomic_dec (int *) ;
 int vfio_group_put (struct vfio_group*) ;
 int vfio_group_try_dissolve_container (struct vfio_group*) ;

__attribute__((used)) static int vfio_group_fops_release(struct inode *inode, struct file *filep)
{
 struct vfio_group *group = filep->private_data;

 filep->private_data = ((void*)0);

 vfio_group_try_dissolve_container(group);

 atomic_dec(&group->opened);

 vfio_group_put(group);

 return 0;
}
