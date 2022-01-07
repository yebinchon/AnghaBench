
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_ccw_device {int curr_io; int cdev; scalar_t__ err; } ;
typedef int __u32 ;


 int get_ccwdev_lock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int doing_io(struct virtio_ccw_device *vcdev, __u32 flag)
{
 unsigned long flags;
 __u32 ret;

 spin_lock_irqsave(get_ccwdev_lock(vcdev->cdev), flags);
 if (vcdev->err)
  ret = 0;
 else
  ret = vcdev->curr_io & flag;
 spin_unlock_irqrestore(get_ccwdev_lock(vcdev->cdev), flags);
 return ret;
}
