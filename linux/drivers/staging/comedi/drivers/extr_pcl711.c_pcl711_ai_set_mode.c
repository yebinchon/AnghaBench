
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; int irq; } ;


 unsigned int PCL711_MODE_EXT_IRQ ;
 unsigned int PCL711_MODE_IRQ (int ) ;
 unsigned int PCL711_MODE_PACER_IRQ ;
 scalar_t__ PCL711_MODE_REG ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static void pcl711_ai_set_mode(struct comedi_device *dev, unsigned int mode)
{
 if (mode == PCL711_MODE_EXT_IRQ || mode == PCL711_MODE_PACER_IRQ)
  mode |= PCL711_MODE_IRQ(dev->irq);

 outb(mode, dev->iobase + PCL711_MODE_REG);
}
