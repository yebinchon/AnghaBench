
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das6402_private {int ao_range; } ;
struct comedi_device {scalar_t__ iobase; struct das6402_private* private; } ;


 int DAS6402_AI_MUX_HI (int ) ;
 int DAS6402_AI_MUX_LO (int ) ;
 scalar_t__ DAS6402_AI_MUX_REG ;
 scalar_t__ DAS6402_AO_DATA_REG (int ) ;
 scalar_t__ DAS6402_AO_LSB_REG (int ) ;
 int DAS6402_AO_RANGE (int,int) ;
 scalar_t__ DAS6402_CTRL_REG ;
 int DAS6402_CTRL_SOFT_TRIG ;
 scalar_t__ DAS6402_DI_DO_REG ;
 int DAS6402_MODE_ENHANCED ;
 int DAS6402_MODE_POLLED ;
 int DAS6402_MODE_RANGE (int ) ;
 scalar_t__ DAS6402_MODE_REG ;
 int DAS6402_MODE_SE ;
 int DAS6402_MODE_UNI ;
 int DAS6402_STATUS_W_10MHZ ;
 scalar_t__ DAS6402_TRIG_REG ;
 int das6402_clear_all_interrupts (struct comedi_device*) ;
 int das6402_set_extended (struct comedi_device*,int ) ;
 int das6402_set_mode (struct comedi_device*,int) ;
 int inw (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void das6402_reset(struct comedi_device *dev)
{
 struct das6402_private *devpriv = dev->private;


 outb(DAS6402_MODE_ENHANCED, dev->iobase + DAS6402_MODE_REG);


 das6402_set_extended(dev, DAS6402_STATUS_W_10MHZ);


 outb(DAS6402_CTRL_SOFT_TRIG, dev->iobase + DAS6402_CTRL_REG);


 das6402_set_mode(dev, DAS6402_MODE_RANGE(0) |
         DAS6402_MODE_POLLED |
         DAS6402_MODE_SE |
         DAS6402_MODE_UNI);


 outw(DAS6402_AI_MUX_HI(0) | DAS6402_AI_MUX_LO(0),
      dev->iobase + DAS6402_AI_MUX_REG);


 devpriv->ao_range = DAS6402_AO_RANGE(0, 2) | DAS6402_AO_RANGE(1, 2);
 outb(devpriv->ao_range, dev->iobase + DAS6402_TRIG_REG);


 outw(0, dev->iobase + DAS6402_AO_DATA_REG(0));
 outw(0, dev->iobase + DAS6402_AO_DATA_REG(0));
 inw(dev->iobase + DAS6402_AO_LSB_REG(0));


 outb(0, dev->iobase + DAS6402_DI_DO_REG);

 das6402_clear_all_interrupts(dev);
}
