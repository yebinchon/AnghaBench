
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct bfad_s {int bfad_lock; int bfa; } ;
typedef int irqreturn_t ;
typedef int bfa_boolean_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int bfa_comp_deq (int *,struct list_head*) ;
 int bfa_comp_free (int *,struct list_head*) ;
 int bfa_comp_process (int *,struct list_head*) ;
 int bfa_intx (int *) ;
 int list_empty (struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

irqreturn_t
bfad_intx(int irq, void *dev_id)
{
 struct bfad_s *bfad = dev_id;
 struct list_head doneq;
 unsigned long flags;
 bfa_boolean_t rc;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 rc = bfa_intx(&bfad->bfa);
 if (!rc) {
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  return IRQ_NONE;
 }

 bfa_comp_deq(&bfad->bfa, &doneq);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 if (!list_empty(&doneq)) {
  bfa_comp_process(&bfad->bfa, &doneq);

  spin_lock_irqsave(&bfad->bfad_lock, flags);
  bfa_comp_free(&bfad->bfa, &doneq);
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 }

 return IRQ_HANDLED;

}
