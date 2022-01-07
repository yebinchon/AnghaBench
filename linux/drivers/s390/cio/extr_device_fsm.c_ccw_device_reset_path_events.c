
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccw_device {TYPE_1__* private; } ;
struct TYPE_2__ {scalar_t__ pgid_reset_mask; scalar_t__ path_new_mask; scalar_t__ path_gone_mask; } ;



__attribute__((used)) static void ccw_device_reset_path_events(struct ccw_device *cdev)
{
 cdev->private->path_gone_mask = 0;
 cdev->private->path_new_mask = 0;
 cdev->private->pgid_reset_mask = 0;
}
