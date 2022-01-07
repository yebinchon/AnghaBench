
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct cmb_data {scalar_t__ hw_block; } ;
struct ccw_device {int ccwlock; TYPE_1__* private; } ;
struct TYPE_2__ {struct cmb_data* cmb; } ;


 int EINVAL ;
 int set_schib_wait (struct ccw_device*,scalar_t__,int,unsigned long) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int set_cmbe(struct ccw_device *cdev, u32 mme)
{
 unsigned long mba;
 struct cmb_data *cmb_data;
 unsigned long flags;

 spin_lock_irqsave(cdev->ccwlock, flags);
 if (!cdev->private->cmb) {
  spin_unlock_irqrestore(cdev->ccwlock, flags);
  return -EINVAL;
 }
 cmb_data = cdev->private->cmb;
 mba = mme ? (unsigned long) cmb_data->hw_block : 0;
 spin_unlock_irqrestore(cdev->ccwlock, flags);

 return set_schib_wait(cdev, mme, 1, mba);
}
