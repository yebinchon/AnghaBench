
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfio_ccw_private {int state; int * completion; } ;
struct TYPE_6__ {int sch_no; int ssid; } ;
struct TYPE_4__ {int ena; } ;
struct TYPE_5__ {TYPE_1__ pmcw; } ;
struct subchannel {int lock; TYPE_3__ schid; TYPE_2__ schib; int dev; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int EBUSY ;
 int EIO ;
 int HZ ;
 int VFIO_CCW_STATE_NOT_OPER ;
 int cio_cancel_halt_clear (struct subchannel*,int*) ;
 int cio_disable_subchannel (struct subchannel*) ;
 int completion ;
 struct vfio_ccw_private* dev_get_drvdata (int *) ;
 int flush_workqueue (int ) ;
 int pr_err (char*,int ,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int vfio_ccw_work_q ;
 int wait_for_completion_timeout (int *,int) ;

int vfio_ccw_sch_quiesce(struct subchannel *sch)
{
 struct vfio_ccw_private *private = dev_get_drvdata(&sch->dev);
 DECLARE_COMPLETION_ONSTACK(completion);
 int iretry, ret = 0;

 spin_lock_irq(sch->lock);
 if (!sch->schib.pmcw.ena)
  goto out_unlock;
 ret = cio_disable_subchannel(sch);
 if (ret != -EBUSY)
  goto out_unlock;

 iretry = 255;
 do {

  ret = cio_cancel_halt_clear(sch, &iretry);

  if (ret == -EIO) {
   pr_err("vfio_ccw: could not quiesce subchannel 0.%x.%04x!\n",
          sch->schid.ssid, sch->schid.sch_no);
   break;
  }





  private->completion = &completion;
  spin_unlock_irq(sch->lock);

  if (ret == -EBUSY)
   wait_for_completion_timeout(&completion, 3*HZ);

  private->completion = ((void*)0);
  flush_workqueue(vfio_ccw_work_q);
  spin_lock_irq(sch->lock);
  ret = cio_disable_subchannel(sch);
 } while (ret == -EBUSY);
out_unlock:
 private->state = VFIO_CCW_STATE_NOT_OPER;
 spin_unlock_irq(sch->lock);
 return ret;
}
