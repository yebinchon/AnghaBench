
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct goldfish_fb {int lock; int wait; int base_update_count; scalar_t__ reg_base; } ;
typedef int irqreturn_t ;


 int FB_INT_BASE_UPDATE_DONE ;
 scalar_t__ FB_INT_STATUS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t goldfish_fb_interrupt(int irq, void *dev_id)
{
 unsigned long irq_flags;
 struct goldfish_fb *fb = dev_id;
 u32 status;

 spin_lock_irqsave(&fb->lock, irq_flags);
 status = readl(fb->reg_base + FB_INT_STATUS);
 if (status & FB_INT_BASE_UPDATE_DONE) {
  fb->base_update_count++;
  wake_up(&fb->wait);
 }
 spin_unlock_irqrestore(&fb->lock, irq_flags);
 return status ? IRQ_HANDLED : IRQ_NONE;
}
