
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_ccw_private {scalar_t__ completion; int io_work; int irb; TYPE_1__* sch; } ;
struct irb {int dummy; } ;
typedef enum vfio_ccw_event { ____Placeholder_vfio_ccw_event } vfio_ccw_event ;
struct TYPE_2__ {int dev; } ;


 int VFIO_CCW_TRACE_EVENT (int,char*) ;
 int cio_irb ;
 int complete (scalar_t__) ;
 char* dev_name (int *) ;
 int memcpy (int *,struct irb*,int) ;
 int queue_work (int ,int *) ;
 struct irb* this_cpu_ptr (int *) ;
 int vfio_ccw_work_q ;

__attribute__((used)) static void fsm_irq(struct vfio_ccw_private *private,
      enum vfio_ccw_event event)
{
 struct irb *irb = this_cpu_ptr(&cio_irb);

 VFIO_CCW_TRACE_EVENT(6, "IRQ");
 VFIO_CCW_TRACE_EVENT(6, dev_name(&private->sch->dev));

 memcpy(&private->irb, irb, sizeof(*irb));

 queue_work(vfio_ccw_work_q, &private->io_work);

 if (private->completion)
  complete(private->completion);
}
