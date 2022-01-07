
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct me4000_private {scalar_t__ plx_regbase; } ;
struct comedi_device {scalar_t__ iobase; struct me4000_private* private; } ;


 unsigned int ME4000_AO_CTRL_IMMEDIATE_STOP ;
 scalar_t__ ME4000_AO_CTRL_REG (int) ;
 unsigned int ME4000_AO_CTRL_STOP ;
 scalar_t__ ME4000_AO_DEMUX_ADJUST_REG ;
 int ME4000_AO_DEMUX_ADJUST_VALUE ;
 scalar_t__ ME4000_AO_SINGLE_REG (int) ;
 scalar_t__ ME4000_DIO_CTRL_REG ;
 scalar_t__ ME4000_DIO_DIR_REG ;
 scalar_t__ PLX9052_CNTRL ;
 unsigned int PLX9052_CNTRL_PCI_RESET ;
 scalar_t__ PLX9052_INTCSR ;
 int inl (scalar_t__) ;
 int me4000_ai_reset (struct comedi_device*) ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static void me4000_reset(struct comedi_device *dev)
{
 struct me4000_private *devpriv = dev->private;
 unsigned int val;
 int chan;


 outl(0, devpriv->plx_regbase + PLX9052_INTCSR);


 val = inl(devpriv->plx_regbase + PLX9052_CNTRL);
 val |= PLX9052_CNTRL_PCI_RESET;
 outl(val, devpriv->plx_regbase + PLX9052_CNTRL);
 val &= ~PLX9052_CNTRL_PCI_RESET;
 outl(val, devpriv->plx_regbase + PLX9052_CNTRL);


 for (chan = 0; chan < 4; chan++)
  outl(0x8000, dev->iobase + ME4000_AO_SINGLE_REG(chan));

 me4000_ai_reset(dev);


 val = ME4000_AO_CTRL_IMMEDIATE_STOP | ME4000_AO_CTRL_STOP;
 for (chan = 0; chan < 4; chan++)
  outl(val, dev->iobase + ME4000_AO_CTRL_REG(chan));


 outl(ME4000_AO_DEMUX_ADJUST_VALUE,
      dev->iobase + ME4000_AO_DEMUX_ADJUST_REG);





 if (!(inl(dev->iobase + ME4000_DIO_DIR_REG) & 0x1))
  outl(0x1, dev->iobase + ME4000_DIO_CTRL_REG);
}
