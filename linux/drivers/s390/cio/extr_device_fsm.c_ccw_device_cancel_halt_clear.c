
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct subchannel {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct ccw_device {TYPE_2__* private; TYPE_1__ dev; } ;
struct TYPE_6__ {int devno; int ssid; } ;
struct TYPE_5__ {TYPE_3__ dev_id; int iretry; } ;


 int CIO_MSG_EVENT (int ,char*,int ,int ) ;
 int EIO ;
 int cio_cancel_halt_clear (struct subchannel*,int *) ;
 struct subchannel* to_subchannel (int ) ;

int
ccw_device_cancel_halt_clear(struct ccw_device *cdev)
{
 struct subchannel *sch;
 int ret;

 sch = to_subchannel(cdev->dev.parent);
 ret = cio_cancel_halt_clear(sch, &cdev->private->iretry);

 if (ret == -EIO)
  CIO_MSG_EVENT(0, "0.%x.%04x: could not stop I/O\n",
         cdev->private->dev_id.ssid,
         cdev->private->dev_id.devno);

 return ret;
}
