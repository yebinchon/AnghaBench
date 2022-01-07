
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int ssid; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_10__ {TYPE_1__ pmcw; } ;
struct subchannel {int lock; int dev; TYPE_3__ schid; TYPE_2__ schib; } ;
struct TYPE_13__ {int initialized; } ;
struct TYPE_12__ {int devno; int ssid; } ;
struct ccw_device_private {TYPE_5__ flags; TYPE_4__ dev_id; int onoff; int timer; int wait_q; int cmb_list; int todo_work; int state; int int_class; struct ccw_device* cdev; } ;
struct TYPE_14__ {int groups; int release; int * parent; } ;
struct ccw_device {TYPE_6__ dev; struct ccw_device_private* private; int ccwlock; } ;


 int DEV_STATE_NOT_OPER ;
 int ENODEV ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int IRQIO_CIO ;
 int atomic_set (int *,int ) ;
 int ccw_device_release ;
 int ccw_device_timeout ;
 int ccw_device_todo ;
 int ccwdev_attr_groups ;
 int dev_set_name (TYPE_6__*,char*,int ,int ) ;
 int device_initialize (TYPE_6__*) ;
 int get_device (int *) ;
 int init_waitqueue_head (int *) ;
 int put_device (TYPE_6__*) ;
 int sch_set_cdev (struct subchannel*,struct ccw_device*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int io_subchannel_initialize_dev(struct subchannel *sch,
     struct ccw_device *cdev)
{
 struct ccw_device_private *priv = cdev->private;
 int ret;

 priv->cdev = cdev;
 priv->int_class = IRQIO_CIO;
 priv->state = DEV_STATE_NOT_OPER;
 priv->dev_id.devno = sch->schib.pmcw.dev;
 priv->dev_id.ssid = sch->schid.ssid;

 INIT_WORK(&priv->todo_work, ccw_device_todo);
 INIT_LIST_HEAD(&priv->cmb_list);
 init_waitqueue_head(&priv->wait_q);
 timer_setup(&priv->timer, ccw_device_timeout, 0);

 atomic_set(&priv->onoff, 0);
 cdev->ccwlock = sch->lock;
 cdev->dev.parent = &sch->dev;
 cdev->dev.release = ccw_device_release;
 cdev->dev.groups = ccwdev_attr_groups;

 device_initialize(&cdev->dev);
 ret = dev_set_name(&cdev->dev, "0.%x.%04x", cdev->private->dev_id.ssid,
      cdev->private->dev_id.devno);
 if (ret)
  goto out_put;
 if (!get_device(&sch->dev)) {
  ret = -ENODEV;
  goto out_put;
 }
 priv->flags.initialized = 1;
 spin_lock_irq(sch->lock);
 sch_set_cdev(sch, cdev);
 spin_unlock_irq(sch->lock);
 return 0;

out_put:

 put_device(&cdev->dev);
 return ret;
}
