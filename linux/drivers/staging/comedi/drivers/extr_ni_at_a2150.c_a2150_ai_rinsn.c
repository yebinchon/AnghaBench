
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {unsigned int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct a2150_private* private; } ;
struct a2150_private {int config_bits; int irq_dma_bits; } ;


 int AC0_BIT ;
 int AC1_BIT ;
 scalar_t__ CONFIG_REG ;
 int CR_CHAN (int ) ;
 int DMA_EN_BIT ;
 int DMA_INTR_EN_BIT ;
 scalar_t__ FIFO_DATA_REG ;
 scalar_t__ FIFO_RESET_REG ;
 scalar_t__ FIFO_START_REG ;
 scalar_t__ IRQ_DMA_CNTRL_REG ;
 scalar_t__ TRIGGER_REG ;
 int a2150_ai_eoc ;
 scalar_t__ a2150_set_chanlist (struct comedi_device*,int ,int) ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 unsigned int inw (scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int a2150_ai_rinsn(struct comedi_device *dev, struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 struct a2150_private *devpriv = dev->private;
 unsigned int n;
 int ret;


 outw(0, dev->iobase + FIFO_RESET_REG);


 if (a2150_set_chanlist(dev, CR_CHAN(insn->chanspec), 1) < 0)
  return -1;


 devpriv->config_bits &= ~AC0_BIT;
 devpriv->config_bits &= ~AC1_BIT;


 outw(devpriv->config_bits, dev->iobase + CONFIG_REG);


 devpriv->irq_dma_bits &= ~DMA_INTR_EN_BIT & ~DMA_EN_BIT;
 outw(devpriv->irq_dma_bits, dev->iobase + IRQ_DMA_CNTRL_REG);


 outw(0, dev->iobase + TRIGGER_REG);


 outw(0, dev->iobase + FIFO_START_REG);





 for (n = 0; n < 36; n++) {
  ret = comedi_timeout(dev, s, insn, a2150_ai_eoc, 0);
  if (ret)
   return ret;

  inw(dev->iobase + FIFO_DATA_REG);
 }


 for (n = 0; n < insn->n; n++) {
  ret = comedi_timeout(dev, s, insn, a2150_ai_eoc, 0);
  if (ret)
   return ret;

  data[n] = inw(dev->iobase + FIFO_DATA_REG);
  data[n] ^= 0x8000;
 }


 outw(0, dev->iobase + FIFO_RESET_REG);

 return n;
}
