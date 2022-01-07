
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int req_issync; int done; } ;
struct st95hf_context {TYPE_1__ spicontext; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_WAKE_THREAD ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t st95hf_irq_handler(int irq, void *st95hfcontext)
{
 struct st95hf_context *stcontext =
  (struct st95hf_context *)st95hfcontext;

 if (stcontext->spicontext.req_issync) {
  complete(&stcontext->spicontext.done);
  stcontext->spicontext.req_issync = 0;
  return IRQ_HANDLED;
 }

 return IRQ_WAKE_THREAD;
}
