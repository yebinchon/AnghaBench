
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt8500lcd_info {scalar_t__ regbase; int wait; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int readl (scalar_t__) ;
 int wake_up_interruptible (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t vt8500lcd_handle_irq(int irq, void *dev_id)
{
 struct vt8500lcd_info *fbi = dev_id;

 if (readl(fbi->regbase + 0x38) & (1 << 3))
  wake_up_interruptible(&fbi->wait);

 writel(0xffffffff, fbi->regbase + 0x38);
 return IRQ_HANDLED;
}
