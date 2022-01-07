
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcidas64_private {scalar_t__ plx9080_iobase; scalar_t__ main_iobase; } ;
struct comedi_device {int attached; struct pcidas64_private* private; } ;
typedef int irqreturn_t ;


 scalar_t__ HW_STATUS_REG ;
 int IRQ_HANDLED ;
 int PLX_INTCSR_LDBIA ;
 scalar_t__ PLX_REG_INTCSR ;
 scalar_t__ PLX_REG_L2PDBELL ;
 int handle_ai_interrupt (struct comedi_device*,unsigned short,int) ;
 int handle_ao_interrupt (struct comedi_device*,unsigned short,int) ;
 int readl (scalar_t__) ;
 unsigned short readw (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t handle_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct pcidas64_private *devpriv = dev->private;
 unsigned short status;
 u32 plx_status;
 u32 plx_bits;

 plx_status = readl(devpriv->plx9080_iobase + PLX_REG_INTCSR);
 status = readw(devpriv->main_iobase + HW_STATUS_REG);






 if (!dev->attached)
  return IRQ_HANDLED;

 handle_ai_interrupt(dev, status, plx_status);
 handle_ao_interrupt(dev, status, plx_status);


 if (plx_status & PLX_INTCSR_LDBIA) {

  plx_bits = readl(devpriv->plx9080_iobase + PLX_REG_L2PDBELL);
  writel(plx_bits, devpriv->plx9080_iobase + PLX_REG_L2PDBELL);
 }

 return IRQ_HANDLED;
}
