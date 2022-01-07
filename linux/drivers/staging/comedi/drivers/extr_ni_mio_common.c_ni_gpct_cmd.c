
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int counter_index; } ;
struct comedi_subdevice {struct ni_gpct* private; } ;
struct comedi_device {int class_dev; } ;


 int COMEDI_INPUT ;
 int dev_err (int ,char*) ;
 int ni_e_series_enable_second_irq (struct comedi_device*,int ,int) ;
 int ni_request_gpct_mite_channel (struct comedi_device*,int ,int ) ;
 int ni_tio_acknowledge (struct ni_gpct*) ;
 int ni_tio_cmd (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static int ni_gpct_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct ni_gpct *counter = s->private;
 int retval;

 retval = ni_request_gpct_mite_channel(dev, counter->counter_index,
           COMEDI_INPUT);
 if (retval) {
  dev_err(dev->class_dev,
   "no dma channel available for use by counter\n");
  return retval;
 }
 ni_tio_acknowledge(counter);
 ni_e_series_enable_second_irq(dev, counter->counter_index, 1);

 return ni_tio_cmd(dev, s);
}
