
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int lock; } ;
struct ccw_device {int dummy; } ;


 int atomic_inc (int *) ;
 int ccw_device_init_count ;
 int ccw_device_recognition (struct ccw_device*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void io_subchannel_recog(struct ccw_device *cdev, struct subchannel *sch)
{

 atomic_inc(&ccw_device_init_count);


 spin_lock_irq(sch->lock);
 ccw_device_recognition(cdev);
 spin_unlock_irq(sch->lock);
}
