
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_container {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct vfio_container* private_data; } ;


 int vfio_container_put (struct vfio_container*) ;

__attribute__((used)) static int vfio_fops_release(struct inode *inode, struct file *filep)
{
 struct vfio_container *container = filep->private_data;

 filep->private_data = ((void*)0);

 vfio_container_put(container);

 return 0;
}
