
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int head; } ;
struct vfio_group {TYPE_1__ notifier; int opened; scalar_t__ container; scalar_t__ noiommu; } ;
struct inode {int dummy; } ;
struct file {struct vfio_group* private_data; } ;


 int BLOCKING_INIT_NOTIFIER_HEAD (TYPE_1__*) ;
 int CAP_SYS_RAWIO ;
 int EBUSY ;
 int ENODEV ;
 int EPERM ;
 scalar_t__ WARN_ON (int ) ;
 int atomic_cmpxchg (int *,int ,int) ;
 int atomic_dec (int *) ;
 int capable (int ) ;
 int iminor (struct inode*) ;
 struct vfio_group* vfio_group_get_from_minor (int ) ;
 int vfio_group_put (struct vfio_group*) ;

__attribute__((used)) static int vfio_group_fops_open(struct inode *inode, struct file *filep)
{
 struct vfio_group *group;
 int opened;

 group = vfio_group_get_from_minor(iminor(inode));
 if (!group)
  return -ENODEV;

 if (group->noiommu && !capable(CAP_SYS_RAWIO)) {
  vfio_group_put(group);
  return -EPERM;
 }


 opened = atomic_cmpxchg(&group->opened, 0, 1);
 if (opened) {
  vfio_group_put(group);
  return -EBUSY;
 }


 if (group->container) {
  atomic_dec(&group->opened);
  vfio_group_put(group);
  return -EBUSY;
 }


 if (WARN_ON(group->notifier.head))
  BLOCKING_INIT_NOTIFIER_HEAD(&group->notifier);

 filep->private_data = group;

 return 0;
}
