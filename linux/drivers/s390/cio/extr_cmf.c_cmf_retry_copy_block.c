
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct copy_block_struct {int wait; int ret; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_2__ {struct copy_block_struct* cmb_wait; } ;


 int cmf_copy_block (struct ccw_device*) ;
 int wake_up (int *) ;

void cmf_retry_copy_block(struct ccw_device *cdev)
{
 struct copy_block_struct *copy_block = cdev->private->cmb_wait;

 if (!copy_block)
  return;

 copy_block->ret = cmf_copy_block(cdev);
 wake_up(&copy_block->wait);
}
