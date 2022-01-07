
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct omap_dispc_isr_data {int mask; int arg; int (* isr ) (int ,int) ;} ;
typedef int registered_isr ;
typedef int irqreturn_t ;
struct TYPE_3__ {int irqs; int irq_count; } ;
struct TYPE_4__ {int irq_error_mask; int error_irqs; int irq_lock; int error_work; int registered_isr; int irq_stats_lock; TYPE_1__ irq_stats; } ;


 int DISPC_MAX_NR_ISRS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int _omap_dispc_set_irqs () ;
 int dispc_clear_irqstatus (int) ;
 TYPE_2__ dispc_compat ;
 int dispc_read_irqenable () ;
 int dispc_read_irqstatus () ;
 int dss_collect_irq_stats (int,int ) ;
 int memcpy (struct omap_dispc_isr_data*,int ,int) ;
 int print_irq_status (int) ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int ,int) ;

__attribute__((used)) static irqreturn_t omap_dispc_irq_handler(int irq, void *arg)
{
 int i;
 u32 irqstatus, irqenable;
 u32 handledirqs = 0;
 u32 unhandled_errors;
 struct omap_dispc_isr_data *isr_data;
 struct omap_dispc_isr_data registered_isr[DISPC_MAX_NR_ISRS];

 spin_lock(&dispc_compat.irq_lock);

 irqstatus = dispc_read_irqstatus();
 irqenable = dispc_read_irqenable();


 if (!(irqstatus & irqenable)) {
  spin_unlock(&dispc_compat.irq_lock);
  return IRQ_NONE;
 }
 print_irq_status(irqstatus);



 dispc_clear_irqstatus(irqstatus);

 dispc_read_irqstatus();



 memcpy(registered_isr, dispc_compat.registered_isr,
   sizeof(registered_isr));

 spin_unlock(&dispc_compat.irq_lock);

 for (i = 0; i < DISPC_MAX_NR_ISRS; i++) {
  isr_data = &registered_isr[i];

  if (!isr_data->isr)
   continue;

  if (isr_data->mask & irqstatus) {
   isr_data->isr(isr_data->arg, irqstatus);
   handledirqs |= isr_data->mask;
  }
 }

 spin_lock(&dispc_compat.irq_lock);

 unhandled_errors = irqstatus & ~handledirqs & dispc_compat.irq_error_mask;

 if (unhandled_errors) {
  dispc_compat.error_irqs |= unhandled_errors;

  dispc_compat.irq_error_mask &= ~unhandled_errors;
  _omap_dispc_set_irqs();

  schedule_work(&dispc_compat.error_work);
 }

 spin_unlock(&dispc_compat.irq_lock);

 return IRQ_HANDLED;
}
