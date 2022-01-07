
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_private {scalar_t__ main_iobase; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct pcidas64_private* private; } ;


 scalar_t__ DAC_CONTROL0_REG ;
 int abort_dma (struct comedi_device*,int ) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int ao_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct pcidas64_private *devpriv = dev->private;

 writew(0x0, devpriv->main_iobase + DAC_CONTROL0_REG);
 abort_dma(dev, 0);
 return 0;
}
