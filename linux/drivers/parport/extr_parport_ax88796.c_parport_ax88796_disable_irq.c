
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int irq; } ;
struct ax_drvdata {scalar_t__ irq_enabled; } ;


 int disable_irq (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct ax_drvdata* pp_to_drv (struct parport*) ;

__attribute__((used)) static void
parport_ax88796_disable_irq(struct parport *p)
{
 struct ax_drvdata *dd = pp_to_drv(p);
 unsigned long flags;

 local_irq_save(flags);
 if (dd->irq_enabled) {
  disable_irq(p->irq);
  dd->irq_enabled = 0;
 }
 local_irq_restore(flags);
}
