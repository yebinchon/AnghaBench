
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct sa1100fb_info {scalar_t__ base; int ctrlr_wait; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ LCCR0 ;
 unsigned int LCCR0_LDM ;
 scalar_t__ LCSR ;
 unsigned int LCSR_LDD ;
 unsigned int readl_relaxed (scalar_t__) ;
 int wake_up (int *) ;
 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static irqreturn_t sa1100fb_handle_irq(int irq, void *dev_id)
{
 struct sa1100fb_info *fbi = dev_id;
 unsigned int lcsr = readl_relaxed(fbi->base + LCSR);

 if (lcsr & LCSR_LDD) {
  u32 lccr0 = readl_relaxed(fbi->base + LCCR0) | LCCR0_LDM;
  writel_relaxed(lccr0, fbi->base + LCCR0);
  wake_up(&fbi->ctrlr_wait);
 }

 writel_relaxed(lcsr, fbi->base + LCSR);
 return IRQ_HANDLED;
}
