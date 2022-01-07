
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tpi_info {int schid; scalar_t__ intparm; } ;
struct TYPE_4__ {int scsw; } ;
struct subchannel {int lock; TYPE_2__* driver; TYPE_1__ schib; } ;
struct irb {int scsw; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int int_code; } ;
struct TYPE_5__ {int (* irq ) (struct subchannel*) ;} ;


 int CIF_NOHZ_DELAY ;
 int IRQIO_CIO ;
 int IRQ_HANDLED ;
 int cio_irb ;
 TYPE_3__* get_irq_regs () ;
 int inc_irq_stat (int ) ;
 int memcpy (int *,int *,int) ;
 int set_cpu_flag (int ) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;
 int stub1 (struct subchannel*) ;
 struct irb* this_cpu_ptr (int *) ;
 int trace_s390_cio_interrupt (struct tpi_info*) ;
 scalar_t__ tsch (int ,struct irb*) ;

__attribute__((used)) static irqreturn_t do_cio_interrupt(int irq, void *dummy)
{
 struct tpi_info *tpi_info;
 struct subchannel *sch;
 struct irb *irb;

 set_cpu_flag(CIF_NOHZ_DELAY);
 tpi_info = (struct tpi_info *) &get_irq_regs()->int_code;
 trace_s390_cio_interrupt(tpi_info);
 irb = this_cpu_ptr(&cio_irb);
 sch = (struct subchannel *)(unsigned long) tpi_info->intparm;
 if (!sch) {

  inc_irq_stat(IRQIO_CIO);
  tsch(tpi_info->schid, irb);
  return IRQ_HANDLED;
 }
 spin_lock(sch->lock);

 if (tsch(tpi_info->schid, irb) == 0) {

  memcpy (&sch->schib.scsw, &irb->scsw, sizeof (irb->scsw));

  if (sch->driver && sch->driver->irq)
   sch->driver->irq(sch);
  else
   inc_irq_stat(IRQIO_CIO);
 } else
  inc_irq_stat(IRQIO_CIO);
 spin_unlock(sch->lock);

 return IRQ_HANDLED;
}
