
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pam; scalar_t__ dev; } ;
struct TYPE_7__ {TYPE_1__ pmcw; } ;
struct subchannel {int lpm; int opm; int schid; TYPE_2__ schib; } ;
struct TYPE_10__ {int parent; } ;
struct ccw_device {TYPE_4__* private; TYPE_5__ dev; } ;
struct TYPE_8__ {scalar_t__ devno; } ;
struct TYPE_9__ {scalar_t__ state; TYPE_3__ dev_id; } ;


 scalar_t__ DEV_STATE_DISCONNECTED ;
 int ccw_device_start_id (struct ccw_device*,int ) ;
 scalar_t__ cio_commit_config (struct subchannel*) ;
 scalar_t__ cio_update_schib (struct subchannel*) ;
 int css_schedule_eval (int ) ;
 int io_subchannel_init_config (struct subchannel*) ;
 struct subchannel* to_subchannel (int ) ;

void ccw_device_trigger_reprobe(struct ccw_device *cdev)
{
 struct subchannel *sch;

 if (cdev->private->state != DEV_STATE_DISCONNECTED)
  return;

 sch = to_subchannel(cdev->dev.parent);

 if (cio_update_schib(sch))
  return;




 sch->lpm = sch->schib.pmcw.pam & sch->opm;




 io_subchannel_init_config(sch);
 if (cio_commit_config(sch))
  return;



 if (sch->schib.pmcw.dev != cdev->private->dev_id.devno)
  css_schedule_eval(sch->schid);
 else
  ccw_device_start_id(cdev, 0);
}
