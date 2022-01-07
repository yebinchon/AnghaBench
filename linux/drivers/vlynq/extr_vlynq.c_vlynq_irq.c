
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vlynq_device {scalar_t__ irq_start; TYPE_1__* local; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int int_status; } ;


 int IRQ_HANDLED ;
 int do_IRQ (scalar_t__) ;
 int readl (int *) ;
 int spurious_interrupt () ;
 scalar_t__ unlikely (int) ;
 int writel (int,int *) ;

__attribute__((used)) static irqreturn_t vlynq_irq(int irq, void *dev_id)
{
 struct vlynq_device *dev = dev_id;
 u32 status;
 int virq = 0;

 status = readl(&dev->local->int_status);
 writel(status, &dev->local->int_status);

 if (unlikely(!status))
  spurious_interrupt();

 while (status) {
  if (status & 1)
   do_IRQ(dev->irq_start + virq);
  status >>= 1;
  virq++;
 }

 return IRQ_HANDLED;
}
