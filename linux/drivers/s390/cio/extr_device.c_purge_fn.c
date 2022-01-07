
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct ccw_device {int ccwlock; TYPE_1__* private; } ;
struct ccw_dev_id {int devno; int ssid; } ;
struct TYPE_2__ {scalar_t__ state; int onoff; struct ccw_dev_id dev_id; } ;


 int CDEV_TODO_UNREG ;
 int CIO_MSG_EVENT (int,char*,int ,int ) ;
 scalar_t__ DEV_STATE_OFFLINE ;
 int EINTR ;
 scalar_t__ atomic_cmpxchg (int *,int ,int) ;
 int atomic_set (int *,int ) ;
 int ccw_device_sched_todo (struct ccw_device*,int ) ;
 int current ;
 scalar_t__ is_blacklisted (int ,int ) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 struct ccw_device* to_ccwdev (struct device*) ;

__attribute__((used)) static int purge_fn(struct device *dev, void *data)
{
 struct ccw_device *cdev = to_ccwdev(dev);
 struct ccw_dev_id *id = &cdev->private->dev_id;

 spin_lock_irq(cdev->ccwlock);
 if (is_blacklisted(id->ssid, id->devno) &&
     (cdev->private->state == DEV_STATE_OFFLINE) &&
     (atomic_cmpxchg(&cdev->private->onoff, 0, 1) == 0)) {
  CIO_MSG_EVENT(3, "ccw: purging 0.%x.%04x\n", id->ssid,
         id->devno);
  ccw_device_sched_todo(cdev, CDEV_TODO_UNREG);
  atomic_set(&cdev->private->onoff, 0);
 }
 spin_unlock_irq(cdev->ccwlock);

 if (signal_pending(current))
  return -EINTR;

 return 0;
}
