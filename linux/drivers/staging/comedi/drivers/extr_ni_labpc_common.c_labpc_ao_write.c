
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct labpc_private {int (* write_byte ) (struct comedi_device*,unsigned int,int ) ;} ;
struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_device {struct labpc_private* private; } ;


 int DAC_LSB_REG (unsigned int) ;
 int DAC_MSB_REG (unsigned int) ;
 int stub1 (struct comedi_device*,unsigned int,int ) ;
 int stub2 (struct comedi_device*,unsigned int,int ) ;

__attribute__((used)) static void labpc_ao_write(struct comedi_device *dev,
      struct comedi_subdevice *s,
      unsigned int chan, unsigned int val)
{
 struct labpc_private *devpriv = dev->private;

 devpriv->write_byte(dev, val & 0xff, DAC_LSB_REG(chan));
 devpriv->write_byte(dev, (val >> 8) & 0xff, DAC_MSB_REG(chan));

 s->readback[chan] = val;
}
