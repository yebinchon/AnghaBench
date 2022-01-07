
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct labpc_private {unsigned int (* read_byte ) (struct comedi_device*,int ) ;} ;
struct comedi_device {struct labpc_private* private; } ;


 int ADC_FIFO_REG ;
 unsigned int stub1 (struct comedi_device*,int ) ;
 unsigned int stub2 (struct comedi_device*,int ) ;

__attribute__((used)) static unsigned int labpc_read_adc_fifo(struct comedi_device *dev)
{
 struct labpc_private *devpriv = dev->private;
 unsigned int lsb = devpriv->read_byte(dev, ADC_FIFO_REG);
 unsigned int msb = devpriv->read_byte(dev, ADC_FIFO_REG);

 return (msb << 8) | lsb;
}
