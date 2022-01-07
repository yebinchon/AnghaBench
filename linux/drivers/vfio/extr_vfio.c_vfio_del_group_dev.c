
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vfio_unbound_dev {int unbound_next; struct device* dev; } ;
struct vfio_group {int container; int container_q; int device_list; int unbound_lock; int unbound_list; } ;
struct vfio_device {TYPE_1__* ops; void* device_data; struct vfio_group* group; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int comm; } ;
struct TYPE_7__ {int release_q; } ;
struct TYPE_6__ {int (* request ) (void*,int ) ;} ;


 int DEFINE_WAIT_FUNC (int ,int ) ;
 int GFP_KERNEL ;
 int HZ ;
 int TASK_INTERRUPTIBLE ;
 int TASK_UNINTERRUPTIBLE ;
 int WARN_ON (int) ;
 int add_wait_queue (int *,int *) ;
 TYPE_3__* current ;
 struct vfio_device* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*,int ,int ) ;
 struct vfio_unbound_dev* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int remove_wait_queue (int *,int *) ;
 scalar_t__ signal_pending (TYPE_3__*) ;
 int stub1 (void*,int ) ;
 int task_pid_nr (TYPE_3__*) ;
 TYPE_2__ vfio ;
 int vfio_device_put (struct vfio_device*) ;
 int vfio_group_get (struct vfio_group*) ;
 struct vfio_device* vfio_group_get_device (struct vfio_group*,struct device*) ;
 int vfio_group_put (struct vfio_group*) ;
 int wait ;
 int wait_event (int ,int) ;
 int wait_woken (int *,int ,int) ;
 int woken_wake_function ;

void *vfio_del_group_dev(struct device *dev)
{
 DEFINE_WAIT_FUNC(wait, woken_wake_function);
 struct vfio_device *device = dev_get_drvdata(dev);
 struct vfio_group *group = device->group;
 void *device_data = device->device_data;
 struct vfio_unbound_dev *unbound;
 unsigned int i = 0;
 bool interrupted = 0;





 vfio_group_get(group);
 unbound = kzalloc(sizeof(*unbound), GFP_KERNEL);
 if (unbound) {
  unbound->dev = dev;
  mutex_lock(&group->unbound_lock);
  list_add(&unbound->unbound_next, &group->unbound_list);
  mutex_unlock(&group->unbound_lock);
 }
 WARN_ON(!unbound);

 vfio_device_put(device);
 add_wait_queue(&vfio.release_q, &wait);

 do {
  device = vfio_group_get_device(group, dev);
  if (!device)
   break;

  if (device->ops->request)
   device->ops->request(device_data, i++);

  vfio_device_put(device);

  if (interrupted) {
   wait_woken(&wait, TASK_UNINTERRUPTIBLE, HZ * 10);
  } else {
   wait_woken(&wait, TASK_INTERRUPTIBLE, HZ * 10);
   if (signal_pending(current)) {
    interrupted = 1;
    dev_warn(dev,
      "Device is currently in use, task"
      " \"%s\" (%d) "
      "blocked until device is released",
      current->comm, task_pid_nr(current));
   }
  }

 } while (1);

 remove_wait_queue(&vfio.release_q, &wait);
 if (list_empty(&group->device_list))
  wait_event(group->container_q, !group->container);

 vfio_group_put(group);

 return device_data;
}
