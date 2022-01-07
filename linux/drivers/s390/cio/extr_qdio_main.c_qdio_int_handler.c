
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct subchannel_id {int sch_no; } ;
struct TYPE_7__ {int sch_no; } ;
struct TYPE_6__ {int qdio_int; } ;
struct qdio_irq {int state; TYPE_2__ schid; TYPE_1__ perf_stat; scalar_t__ perf_stat_enabled; } ;
struct TYPE_8__ {int cstat; int dstat; } ;
struct TYPE_9__ {TYPE_3__ cmd; } ;
struct irb {TYPE_4__ scsw; } ;
struct ccw_device {TYPE_5__* private; } ;
struct TYPE_10__ {int wait_q; struct qdio_irq* qdio_data; } ;


 int DBF_ERROR (char*,int ) ;
 scalar_t__ IS_ERR (struct irb*) ;


 int const QDIO_IRQ_STATE_ERR ;



 int SCHN_STAT_PCI ;
 int WARN_ON_ONCE (int) ;
 int ccw_device_get_schid (struct ccw_device*,struct subchannel_id*) ;
 int qdio_establish_handle_irq (struct ccw_device*,int,int) ;
 int qdio_handle_activate_check (struct ccw_device*,unsigned long,int,int) ;
 int qdio_int_handler_pci (struct qdio_irq*) ;
 int qdio_irq_check_sense (struct qdio_irq*,struct irb*) ;
 int qdio_set_state (struct qdio_irq*,int const) ;
 int wake_up (int *) ;

void qdio_int_handler(struct ccw_device *cdev, unsigned long intparm,
        struct irb *irb)
{
 struct qdio_irq *irq_ptr = cdev->private->qdio_data;
 struct subchannel_id schid;
 int cstat, dstat;

 if (!intparm || !irq_ptr) {
  ccw_device_get_schid(cdev, &schid);
  DBF_ERROR("qint:%4x", schid.sch_no);
  return;
 }

 if (irq_ptr->perf_stat_enabled)
  irq_ptr->perf_stat.qdio_int++;

 if (IS_ERR(irb)) {
  DBF_ERROR("%4x IO error", irq_ptr->schid.sch_no);
  qdio_set_state(irq_ptr, QDIO_IRQ_STATE_ERR);
  wake_up(&cdev->private->wait_q);
  return;
 }
 qdio_irq_check_sense(irq_ptr, irb);
 cstat = irb->scsw.cmd.cstat;
 dstat = irb->scsw.cmd.dstat;

 switch (irq_ptr->state) {
 case 129:
  qdio_establish_handle_irq(cdev, cstat, dstat);
  break;
 case 131:
  qdio_set_state(irq_ptr, 129);
  break;
 case 130:
 case 132:
  if (cstat & SCHN_STAT_PCI) {
   qdio_int_handler_pci(irq_ptr);
   return;
  }
  if (cstat || dstat)
   qdio_handle_activate_check(cdev, intparm, cstat,
         dstat);
  break;
 case 128:
  break;
 default:
  WARN_ON_ONCE(1);
 }
 wake_up(&cdev->private->wait_q);
}
