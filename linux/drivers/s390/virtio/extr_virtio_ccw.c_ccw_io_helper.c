
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_ccw_device {int curr_io; int err; int io_lock; int wait_q; int cdev; } ;
struct ccw1 {int dummy; } ;
typedef int __u32 ;


 int EBUSY ;
 int VIRTIO_CCW_INTPARM_MASK ;
 int ccw_device_start (int ,struct ccw1*,int,int ,int ) ;
 int cpu_relax () ;
 scalar_t__ doing_io (struct virtio_ccw_device*,int) ;
 int get_ccwdev_lock (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int ccw_io_helper(struct virtio_ccw_device *vcdev,
    struct ccw1 *ccw, __u32 intparm)
{
 int ret;
 unsigned long flags;
 int flag = intparm & VIRTIO_CCW_INTPARM_MASK;

 mutex_lock(&vcdev->io_lock);
 do {
  spin_lock_irqsave(get_ccwdev_lock(vcdev->cdev), flags);
  ret = ccw_device_start(vcdev->cdev, ccw, intparm, 0, 0);
  if (!ret) {
   if (!vcdev->curr_io)
    vcdev->err = 0;
   vcdev->curr_io |= flag;
  }
  spin_unlock_irqrestore(get_ccwdev_lock(vcdev->cdev), flags);
  cpu_relax();
 } while (ret == -EBUSY);
 wait_event(vcdev->wait_q, doing_io(vcdev, flag) == 0);
 ret = ret ? ret : vcdev->err;
 mutex_unlock(&vcdev->io_lock);
 return ret;
}
