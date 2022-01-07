
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_msit_isr_ctx {int occurrences; int irq_idx; struct ntb_msit_ctx* nm; } ;
struct ntb_msit_ctx {TYPE_1__* ntb; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int dev_dbg (int *,char*,int ) ;

__attribute__((used)) static irqreturn_t ntb_msit_isr(int irq, void *dev)
{
 struct ntb_msit_isr_ctx *isr_ctx = dev;
 struct ntb_msit_ctx *nm = isr_ctx->nm;

 dev_dbg(&nm->ntb->dev, "Interrupt Occurred: %d",
  isr_ctx->irq_idx);

 isr_ctx->occurrences++;

 return IRQ_HANDLED;
}
