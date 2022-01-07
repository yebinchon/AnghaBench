
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;
typedef int avmcard ;


 int IRQ_HANDLED ;
 int b1dma_handle_interrupt (int *) ;

irqreturn_t b1dma_interrupt(int interrupt, void *devptr)
{
 avmcard *card = devptr;

 b1dma_handle_interrupt(card);
 return IRQ_HANDLED;
}
