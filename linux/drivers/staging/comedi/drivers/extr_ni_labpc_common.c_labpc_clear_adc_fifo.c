
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct labpc_private {int (* write_byte ) (struct comedi_device*,int,int ) ;} ;
struct comedi_device {struct labpc_private* private; } ;


 int ADC_FIFO_CLEAR_REG ;
 int labpc_read_adc_fifo (struct comedi_device*) ;
 int stub1 (struct comedi_device*,int,int ) ;

__attribute__((used)) static void labpc_clear_adc_fifo(struct comedi_device *dev)
{
 struct labpc_private *devpriv = dev->private;

 devpriv->write_byte(dev, 0x1, ADC_FIFO_CLEAR_REG);
 labpc_read_adc_fifo(dev);
}
