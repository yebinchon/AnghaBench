
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_ccw_private {int dummy; } ;
struct subchannel {int dev; } ;


 int IRQIO_CIO ;
 int VFIO_CCW_EVENT_INTERRUPT ;
 struct vfio_ccw_private* dev_get_drvdata (int *) ;
 int inc_irq_stat (int ) ;
 int vfio_ccw_fsm_event (struct vfio_ccw_private*,int ) ;

__attribute__((used)) static void vfio_ccw_sch_irq(struct subchannel *sch)
{
 struct vfio_ccw_private *private = dev_get_drvdata(&sch->dev);

 inc_irq_stat(IRQIO_CIO);
 vfio_ccw_fsm_event(private, VFIO_CCW_EVENT_INTERRUPT);
}
