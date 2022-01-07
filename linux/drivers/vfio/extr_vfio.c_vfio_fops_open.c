
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_container {int kref; int group_lock; int group_list; } ;
struct inode {int dummy; } ;
struct file {struct vfio_container* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int init_rwsem (int *) ;
 int kref_init (int *) ;
 struct vfio_container* kzalloc (int,int ) ;

__attribute__((used)) static int vfio_fops_open(struct inode *inode, struct file *filep)
{
 struct vfio_container *container;

 container = kzalloc(sizeof(*container), GFP_KERNEL);
 if (!container)
  return -ENOMEM;

 INIT_LIST_HEAD(&container->group_list);
 init_rwsem(&container->group_lock);
 kref_init(&container->kref);

 filep->private_data = container;

 return 0;
}
