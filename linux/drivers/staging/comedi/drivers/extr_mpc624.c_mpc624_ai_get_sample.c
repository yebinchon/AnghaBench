
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc624_private {unsigned int ai_speed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int class_dev; scalar_t__ iobase; struct mpc624_private* private; } ;


 unsigned int BIT (int) ;
 scalar_t__ MPC624_ADC ;
 unsigned int MPC624_ADSCK ;
 unsigned int MPC624_ADSDI ;
 int MPC624_ADSDO ;
 unsigned int MPC624_DMY_BIT ;
 unsigned int MPC624_EOC_BIT ;
 unsigned int MPC624_SGN_BIT ;
 int dev_dbg (int ,char*) ;
 int inb (scalar_t__) ;
 int outb (unsigned int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static unsigned int mpc624_ai_get_sample(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 struct mpc624_private *devpriv = dev->private;
 unsigned int data_out = devpriv->ai_speed;
 unsigned int data_in = 0;
 unsigned int bit;
 int i;


 udelay(1);
 for (i = 0; i < 32; i++) {

  outb(0, dev->iobase + MPC624_ADC);
  udelay(1);


  bit = (data_out & BIT(31)) ? MPC624_ADSDI : 0;
  outb(bit, dev->iobase + MPC624_ADC);
  udelay(1);


  outb(MPC624_ADSCK | bit, dev->iobase + MPC624_ADC);
  udelay(1);


  data_in <<= 1;
  data_in |= (inb(dev->iobase + MPC624_ADC) & MPC624_ADSDO) >> 4;
  udelay(1);

  data_out <<= 1;
 }
 if (data_in & MPC624_EOC_BIT)
  dev_dbg(dev->class_dev, "EOC bit is set!");
 if (data_in & MPC624_DMY_BIT)
  dev_dbg(dev->class_dev, "DMY bit is set!");

 if (data_in & MPC624_SGN_BIT) {






  data_in &= 0x3fffffff;
 } else {






  data_in |= MPC624_SGN_BIT;
  data_in = ~data_in;
  data_in += 1;

  data_in &= ~(MPC624_EOC_BIT | MPC624_DMY_BIT);
  data_in = 0x20000000 - data_in;
 }
 return data_in;
}
