
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmb_data {scalar_t__ last_update; int size; int hw_block; int last_block; } ;
struct ccw_device {int ccwlock; TYPE_1__* private; } ;
struct TYPE_2__ {int cmb_start_time; struct cmb_data* cmb; } ;


 int get_tod_clock () ;
 int memset (int ,int ,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void cmf_generic_reset(struct ccw_device *cdev)
{
 struct cmb_data *cmb_data;

 spin_lock_irq(cdev->ccwlock);
 cmb_data = cdev->private->cmb;
 if (cmb_data) {
  memset(cmb_data->last_block, 0, cmb_data->size);




  memset(cmb_data->hw_block, 0, cmb_data->size);
  cmb_data->last_update = 0;
 }
 cdev->private->cmb_start_time = get_tod_clock();
 spin_unlock_irq(cdev->ccwlock);
}
