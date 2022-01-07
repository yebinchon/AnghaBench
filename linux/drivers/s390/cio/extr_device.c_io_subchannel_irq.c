
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int dev; } ;
struct ccw_device {int dummy; } ;


 int CIO_TRACE_EVENT (int,char*) ;
 int DEV_EVENT_INTERRUPT ;
 int IRQIO_CIO ;
 int dev_fsm_event (struct ccw_device*,int ) ;
 char* dev_name (int *) ;
 int inc_irq_stat (int ) ;
 struct ccw_device* sch_get_cdev (struct subchannel*) ;

__attribute__((used)) static void io_subchannel_irq(struct subchannel *sch)
{
 struct ccw_device *cdev;

 cdev = sch_get_cdev(sch);

 CIO_TRACE_EVENT(6, "IRQ");
 CIO_TRACE_EVENT(6, dev_name(&sch->dev));
 if (cdev)
  dev_fsm_event(cdev, DEV_EVENT_INTERRUPT);
 else
  inc_irq_stat(IRQIO_CIO);
}
