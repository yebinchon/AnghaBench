
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct bfad_s {int bfad_lock; int bfa; } ;
struct TYPE_2__ {int entry; } ;
struct bfad_msix_s {TYPE_1__ msix; struct bfad_s* bfad; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int bfa_comp_deq (int *,struct list_head*) ;
 int bfa_comp_free (int *,struct list_head*) ;
 int bfa_comp_process (int *,struct list_head*) ;
 int bfa_msix (int *,int ) ;
 int list_empty (struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t
bfad_msix(int irq, void *dev_id)
{
 struct bfad_msix_s *vec = dev_id;
 struct bfad_s *bfad = vec->bfad;
 struct list_head doneq;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);

 bfa_msix(&bfad->bfa, vec->msix.entry);
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
