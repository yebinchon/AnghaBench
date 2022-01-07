
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccw_device {int ccwlock; TYPE_1__* private; } ;
struct TYPE_2__ {int cmb; } ;


 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int cmf_enabled(struct ccw_device *cdev)
{
 int enabled;

 spin_lock_irq(cdev->ccwlock);
 enabled = !!cdev->private->cmb;
 spin_unlock_irq(cdev->ccwlock);

 return enabled;
}
