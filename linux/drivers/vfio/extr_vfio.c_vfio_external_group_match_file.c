
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_group {int dummy; } ;
struct file {int * f_op; struct vfio_group* private_data; } ;


 int vfio_group_fops ;

bool vfio_external_group_match_file(struct vfio_group *test_group,
        struct file *filep)
{
 struct vfio_group *group = filep->private_data;

 return (filep->f_op == &vfio_group_fops) && (group == test_group);
}
