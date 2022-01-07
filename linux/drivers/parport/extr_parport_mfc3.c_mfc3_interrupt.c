
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int crb; int pprb; } ;


 int IRQ_HANDLED ;
 int MAX_MFC ;
 int dummy ;
 int parport_generic_irq (int *) ;
 TYPE_1__* pia (int *) ;
 int ** this_port ;

__attribute__((used)) static irqreturn_t mfc3_interrupt(int irq, void *dev_id)
{
 int i;

 for( i = 0; i < MAX_MFC; i++)
  if (this_port[i] != ((void*)0))
   if (pia(this_port[i])->crb & 128) {
    dummy = pia(this_port[i])->pprb;
    parport_generic_irq(this_port[i]);
   }
 return IRQ_HANDLED;
}
