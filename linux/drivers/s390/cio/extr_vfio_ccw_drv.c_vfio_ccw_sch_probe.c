
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {struct vfio_ccw_private* guest_cp; } ;
struct vfio_ccw_private {TYPE_3__ cp; void* io_region; void* cmd_region; int state; int avail; int io_work; int io_mutex; struct subchannel* sch; } ;
struct TYPE_5__ {int sch_no; int ssid; int cssid; } ;
struct pmcw {scalar_t__ qf; } ;
struct TYPE_4__ {struct pmcw pmcw; } ;
struct subchannel {int dev; TYPE_2__ schid; int lock; int isc; TYPE_1__ schib; } ;
struct ccw1 {int dummy; } ;


 int CCWCHAIN_LEN_MAX ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int VFIO_CCW_ISC ;
 int VFIO_CCW_MSG_EVENT (int,char*,int ,int ,int ) ;
 int VFIO_CCW_STATE_NOT_OPER ;
 int VFIO_CCW_STATE_STANDBY ;
 int atomic_set (int *,int) ;
 int cio_disable_subchannel (struct subchannel*) ;
 int cio_enable_subchannel (struct subchannel*,int ) ;
 int dev_name (int *) ;
 int dev_set_drvdata (int *,struct vfio_ccw_private*) ;
 int dev_warn (int *,char*,int ) ;
 struct vfio_ccw_private* kcalloc (int ,int,int) ;
 int kfree (struct vfio_ccw_private*) ;
 int kmem_cache_free (int ,void*) ;
 void* kmem_cache_zalloc (int ,int) ;
 struct vfio_ccw_private* kzalloc (int,int) ;
 int mutex_init (int *) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int vfio_ccw_cmd_region ;
 int vfio_ccw_io_region ;
 int vfio_ccw_mdev_reg (struct subchannel*) ;
 int vfio_ccw_sch_io_todo ;

__attribute__((used)) static int vfio_ccw_sch_probe(struct subchannel *sch)
{
 struct pmcw *pmcw = &sch->schib.pmcw;
 struct vfio_ccw_private *private;
 int ret = -ENOMEM;

 if (pmcw->qf) {
  dev_warn(&sch->dev, "vfio: ccw: does not support QDIO: %s\n",
    dev_name(&sch->dev));
  return -ENODEV;
 }

 private = kzalloc(sizeof(*private), GFP_KERNEL | GFP_DMA);
 if (!private)
  return -ENOMEM;

 private->cp.guest_cp = kcalloc(CCWCHAIN_LEN_MAX, sizeof(struct ccw1),
           GFP_KERNEL);
 if (!private->cp.guest_cp)
  goto out_free;

 private->io_region = kmem_cache_zalloc(vfio_ccw_io_region,
            GFP_KERNEL | GFP_DMA);
 if (!private->io_region)
  goto out_free;

 private->cmd_region = kmem_cache_zalloc(vfio_ccw_cmd_region,
      GFP_KERNEL | GFP_DMA);
 if (!private->cmd_region)
  goto out_free;

 private->sch = sch;
 dev_set_drvdata(&sch->dev, private);
 mutex_init(&private->io_mutex);

 spin_lock_irq(sch->lock);
 private->state = VFIO_CCW_STATE_NOT_OPER;
 sch->isc = VFIO_CCW_ISC;
 ret = cio_enable_subchannel(sch, (u32)(unsigned long)sch);
 spin_unlock_irq(sch->lock);
 if (ret)
  goto out_free;

 INIT_WORK(&private->io_work, vfio_ccw_sch_io_todo);
 atomic_set(&private->avail, 1);
 private->state = VFIO_CCW_STATE_STANDBY;

 ret = vfio_ccw_mdev_reg(sch);
 if (ret)
  goto out_disable;

 VFIO_CCW_MSG_EVENT(4, "bound to subchannel %x.%x.%04x\n",
      sch->schid.cssid, sch->schid.ssid,
      sch->schid.sch_no);
 return 0;

out_disable:
 cio_disable_subchannel(sch);
out_free:
 dev_set_drvdata(&sch->dev, ((void*)0));
 if (private->cmd_region)
  kmem_cache_free(vfio_ccw_cmd_region, private->cmd_region);
 if (private->io_region)
  kmem_cache_free(vfio_ccw_io_region, private->io_region);
 kfree(private->cp.guest_cp);
 kfree(private);
 return ret;
}
