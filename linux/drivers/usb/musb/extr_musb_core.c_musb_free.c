
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {scalar_t__ nIrq; scalar_t__ irq_wake; } ;


 int disable_irq_wake (scalar_t__) ;
 int free_irq (scalar_t__,struct musb*) ;
 int musb_host_free (struct musb*) ;

__attribute__((used)) static void musb_free(struct musb *musb)
{





 if (musb->nIrq >= 0) {
  if (musb->irq_wake)
   disable_irq_wake(musb->nIrq);
  free_irq(musb->nIrq, musb);
 }

 musb_host_free(musb);
}
