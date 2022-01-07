
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int dummy; } ;
struct comedi_subdevice {struct ni_gpct* private; } ;
struct comedi_device {int dummy; } ;


 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int ni_tio_handle_interrupt (struct ni_gpct*,struct comedi_subdevice*) ;

__attribute__((used)) static void ni_660x_handle_gpct_interrupt(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct ni_gpct *counter = s->private;

 ni_tio_handle_interrupt(counter, s);
 comedi_handle_events(dev, s);
}
