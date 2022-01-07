
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {scalar_t__ pam; } ;
struct TYPE_7__ {TYPE_2__ pmcw; } ;
struct subchannel {scalar_t__ opm; scalar_t__ vpm; TYPE_3__ schib; } ;
struct TYPE_5__ {int parent; } ;
struct ccw_device {TYPE_4__* private; TYPE_1__ dev; } ;
struct TYPE_8__ {scalar_t__ path_broken_mask; } ;


 int ccw_device_schedule_recovery () ;
 struct subchannel* to_subchannel (int ) ;

__attribute__((used)) static void ccw_device_handle_broken_paths(struct ccw_device *cdev)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);
 u8 broken_paths = (sch->schib.pmcw.pam & sch->opm) ^ sch->vpm;

 if (broken_paths && (cdev->private->path_broken_mask != broken_paths))
  ccw_device_schedule_recovery();

 cdev->private->path_broken_mask = broken_paths;
}
