
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int dummy; } ;
struct comedi_subdevice {struct ni_gpct* private; } ;
struct comedi_device {int dummy; } ;


 int ni_660x_release_mite_channel (struct comedi_device*,struct ni_gpct*) ;
 int ni_tio_cancel (struct ni_gpct*) ;

__attribute__((used)) static int ni_660x_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct ni_gpct *counter = s->private;
 int retval;

 retval = ni_tio_cancel(counter);
 ni_660x_release_mite_channel(dev, counter);
 return retval;
}
