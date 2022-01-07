
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct subchannel {int dummy; } ;
struct device {int dummy; } ;
struct ccw_driver {int (* remove ) (struct ccw_device*) ;} ;
struct TYPE_6__ {int parent; } ;
struct ccw_device {int ccwlock; TYPE_3__ dev; TYPE_2__* private; struct ccw_driver* drv; scalar_t__ online; } ;
struct TYPE_4__ {int devno; int ssid; } ;
struct TYPE_5__ {int int_class; TYPE_1__ dev_id; int wait_q; } ;


 int CIO_MSG_EVENT (int ,char*,int,int ,int ) ;
 int IRQIO_CIO ;
 int __disable_cmf (struct ccw_device*) ;
 int ccw_device_offline (struct ccw_device*) ;
 int ccw_device_set_timeout (struct ccw_device*,int ) ;
 int dev_fsm_final_state (struct ccw_device*) ;
 int io_subchannel_quiesce (struct subchannel*) ;
 int put_device (TYPE_3__*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int stub1 (struct ccw_device*) ;
 struct ccw_device* to_ccwdev (struct device*) ;
 struct subchannel* to_subchannel (int ) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static int ccw_device_remove(struct device *dev)
{
 struct ccw_device *cdev = to_ccwdev(dev);
 struct ccw_driver *cdrv = cdev->drv;
 struct subchannel *sch;
 int ret;

 if (cdrv->remove)
  cdrv->remove(cdev);

 spin_lock_irq(cdev->ccwlock);
 if (cdev->online) {
  cdev->online = 0;
  ret = ccw_device_offline(cdev);
  spin_unlock_irq(cdev->ccwlock);
  if (ret == 0)
   wait_event(cdev->private->wait_q,
       dev_fsm_final_state(cdev));
  else
   CIO_MSG_EVENT(0, "ccw_device_offline returned %d, "
          "device 0.%x.%04x\n",
          ret, cdev->private->dev_id.ssid,
          cdev->private->dev_id.devno);

  put_device(&cdev->dev);
  spin_lock_irq(cdev->ccwlock);
 }
 ccw_device_set_timeout(cdev, 0);
 cdev->drv = ((void*)0);
 cdev->private->int_class = IRQIO_CIO;
 sch = to_subchannel(cdev->dev.parent);
 spin_unlock_irq(cdev->ccwlock);
 io_subchannel_quiesce(sch);
 __disable_cmf(cdev);

 return 0;
}
