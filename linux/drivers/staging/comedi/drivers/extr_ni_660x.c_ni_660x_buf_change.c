
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {size_t chip_index; size_t counter_index; } ;
struct ni_660x_private {struct mite_ring*** ring; } ;
struct mite_ring {int dummy; } ;
struct comedi_subdevice {struct ni_gpct* private; } ;
struct comedi_device {struct ni_660x_private* private; } ;


 int mite_buf_change (struct mite_ring*,struct comedi_subdevice*) ;

__attribute__((used)) static int ni_660x_buf_change(struct comedi_device *dev,
         struct comedi_subdevice *s)
{
 struct ni_660x_private *devpriv = dev->private;
 struct ni_gpct *counter = s->private;
 struct mite_ring *ring;
 int ret;

 ring = devpriv->ring[counter->chip_index][counter->counter_index];
 ret = mite_buf_change(ring, s);
 if (ret < 0)
  return ret;

 return 0;
}
