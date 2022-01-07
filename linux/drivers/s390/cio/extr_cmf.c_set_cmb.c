
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef struct cmb* u16 ;
struct cmb_data {scalar_t__ hw_block; } ;
struct cmb {int dummy; } ;
struct ccw_device {int ccwlock; TYPE_1__* private; } ;
struct TYPE_4__ {int mem; } ;
struct TYPE_3__ {struct cmb_data* cmb; } ;


 int EINVAL ;
 TYPE_2__ cmb_area ;
 int set_schib_wait (struct ccw_device*,scalar_t__,int ,struct cmb*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int set_cmb(struct ccw_device *cdev, u32 mme)
{
 u16 offset;
 struct cmb_data *cmb_data;
 unsigned long flags;

 spin_lock_irqsave(cdev->ccwlock, flags);
 if (!cdev->private->cmb) {
  spin_unlock_irqrestore(cdev->ccwlock, flags);
  return -EINVAL;
 }
 cmb_data = cdev->private->cmb;
 offset = mme ? (struct cmb *)cmb_data->hw_block - cmb_area.mem : 0;
 spin_unlock_irqrestore(cdev->ccwlock, flags);

 return set_schib_wait(cdev, mme, 0, offset);
}
