
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct subchannel {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct ccw_device {TYPE_3__* private; TYPE_1__ dev; } ;
typedef scalar_t__ addr_t ;
struct TYPE_5__ {scalar_t__ recog_done; } ;
struct TYPE_6__ {int state; TYPE_2__ flags; } ;


 int DEV_STATE_NOT_OPER ;
 int DEV_STATE_SENSE_ID ;
 int ccw_device_recog_done (struct ccw_device*,int ) ;
 int ccw_device_sense_id_start (struct ccw_device*) ;
 scalar_t__ cio_enable_subchannel (struct subchannel*,int ) ;
 struct subchannel* to_subchannel (int ) ;

void ccw_device_recognition(struct ccw_device *cdev)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);
 cdev->private->flags.recog_done = 0;
 cdev->private->state = DEV_STATE_SENSE_ID;
 if (cio_enable_subchannel(sch, (u32) (addr_t) sch)) {
  ccw_device_recog_done(cdev, DEV_STATE_NOT_OPER);
  return;
 }
 ccw_device_sense_id_start(cdev);
}
