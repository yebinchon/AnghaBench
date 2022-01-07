
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8727_chg {scalar_t__ irq; int work; } ;


 int cancel_delayed_work_sync (int *) ;
 int free_irq (scalar_t__,struct lp8727_chg*) ;

__attribute__((used)) static void lp8727_release_irq(struct lp8727_chg *pchg)
{
 cancel_delayed_work_sync(&pchg->work);

 if (pchg->irq)
  free_irq(pchg->irq, pchg);
}
