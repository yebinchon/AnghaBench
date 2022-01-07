
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int irq; scalar_t__ mmio; } ;


 int disable_irq (int ) ;
 int enable_irq (int ) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int apci3xxx_reset(struct comedi_device *dev)
{
 unsigned int val;
 int i;


 disable_irq(dev->irq);


 writel(0, dev->mmio + 8);


 val = readl(dev->mmio + 16);
 writel(val, dev->mmio + 16);


 readl(dev->mmio + 20);


 for (i = 0; i < 16; i++)
  val = readl(dev->mmio + 28);


 enable_irq(dev->irq);

 return 0;
}
