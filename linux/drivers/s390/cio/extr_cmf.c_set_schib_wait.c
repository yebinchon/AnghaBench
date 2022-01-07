
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct set_schib_struct {int mbfc; unsigned long address; int ret; int wait; int mme; } ;
struct ccw_device {int ccwlock; TYPE_1__* private; } ;
struct TYPE_2__ {scalar_t__ state; struct set_schib_struct* cmb_wait; int cmb; } ;


 int CMF_PENDING ;
 scalar_t__ DEV_STATE_CMFCHANGE ;
 scalar_t__ DEV_STATE_ONLINE ;
 int EBUSY ;
 int ENODEV ;
 int ETIME ;
 int SET_SCHIB_TIMEOUT ;
 int init_waitqueue_head (int *) ;
 int set_schib (struct ccw_device*,int ,int,unsigned long) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int set_schib_wait(struct ccw_device *cdev, u32 mme,
     int mbfc, unsigned long address)
{
 struct set_schib_struct set_data;
 int ret = -ENODEV;

 spin_lock_irq(cdev->ccwlock);
 if (!cdev->private->cmb)
  goto out;

 ret = set_schib(cdev, mme, mbfc, address);
 if (ret != -EBUSY)
  goto out;


 if (cdev->private->state != DEV_STATE_ONLINE)
  goto out;

 init_waitqueue_head(&set_data.wait);
 set_data.mme = mme;
 set_data.mbfc = mbfc;
 set_data.address = address;
 set_data.ret = CMF_PENDING;

 cdev->private->state = DEV_STATE_CMFCHANGE;
 cdev->private->cmb_wait = &set_data;
 spin_unlock_irq(cdev->ccwlock);

 ret = wait_event_interruptible_timeout(set_data.wait,
            set_data.ret != CMF_PENDING,
            SET_SCHIB_TIMEOUT);
 spin_lock_irq(cdev->ccwlock);
 if (ret <= 0) {
  if (set_data.ret == CMF_PENDING) {
   set_data.ret = (ret == 0) ? -ETIME : ret;
   if (cdev->private->state == DEV_STATE_CMFCHANGE)
    cdev->private->state = DEV_STATE_ONLINE;
  }
 }
 cdev->private->cmb_wait = ((void*)0);
 ret = set_data.ret;
out:
 spin_unlock_irq(cdev->ccwlock);
 return ret;
}
