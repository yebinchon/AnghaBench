
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_group {int dummy; } ;
struct file {int * f_op; struct vfio_group* private_data; } ;


 int EINVAL ;
 struct vfio_group* ERR_PTR (int) ;
 int vfio_group_add_container_user (struct vfio_group*) ;
 int vfio_group_fops ;
 int vfio_group_get (struct vfio_group*) ;

struct vfio_group *vfio_group_get_external_user(struct file *filep)
{
 struct vfio_group *group = filep->private_data;
 int ret;

 if (filep->f_op != &vfio_group_fops)
  return ERR_PTR(-EINVAL);

 ret = vfio_group_add_container_user(group);
 if (ret)
  return ERR_PTR(ret);

 vfio_group_get(group);

 return group;
}
