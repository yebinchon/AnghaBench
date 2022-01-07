
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; struct atmio16d_private* private; } ;
struct atmio16d_private {int com_reg_1_state; int adc_coding; } ;


 scalar_t__ AD_CLEAR_REG ;
 scalar_t__ AM9513A_COM_REG ;
 scalar_t__ AM9513A_DATA_REG ;
 scalar_t__ COM_REG_1 ;
 scalar_t__ COM_REG_2 ;
 scalar_t__ DAC0_REG ;
 scalar_t__ DAC1_REG ;
 scalar_t__ INT2CLR_REG ;
 scalar_t__ MUX_GAIN_REG ;
 int adc_straight ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void reset_atmio16d(struct comedi_device *dev)
{
 struct atmio16d_private *devpriv = dev->private;
 int i;


 outw(0, dev->iobase + COM_REG_1);
 outw(0, dev->iobase + COM_REG_2);
 outw(0, dev->iobase + MUX_GAIN_REG);

 outw(0xFFFF, dev->iobase + AM9513A_COM_REG);
 outw(0xFFEF, dev->iobase + AM9513A_COM_REG);
 outw(0xFF17, dev->iobase + AM9513A_COM_REG);
 outw(0xF000, dev->iobase + AM9513A_DATA_REG);
 for (i = 1; i <= 5; ++i) {
  outw(0xFF00 + i, dev->iobase + AM9513A_COM_REG);
  outw(0x0004, dev->iobase + AM9513A_DATA_REG);
  outw(0xFF08 + i, dev->iobase + AM9513A_COM_REG);
  outw(0x3, dev->iobase + AM9513A_DATA_REG);
 }
 outw(0xFF5F, dev->iobase + AM9513A_COM_REG);

 outw(0, dev->iobase + AD_CLEAR_REG);
 outw(0, dev->iobase + INT2CLR_REG);

 devpriv->com_reg_1_state |= 1;
 outw(devpriv->com_reg_1_state, dev->iobase + COM_REG_1);
 devpriv->adc_coding = adc_straight;

 outw(2048, dev->iobase + DAC0_REG);
 outw(2048, dev->iobase + DAC1_REG);
}
