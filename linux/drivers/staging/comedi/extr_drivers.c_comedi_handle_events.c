
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int (* cancel ) (struct comedi_device*,struct comedi_subdevice*) ;TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int events; } ;


 unsigned int COMEDI_CB_CANCEL_MASK ;
 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 int stub1 (struct comedi_device*,struct comedi_subdevice*) ;

unsigned int comedi_handle_events(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 unsigned int events = s->async->events;

 if (events == 0)
  return events;

 if ((events & COMEDI_CB_CANCEL_MASK) && s->cancel)
  s->cancel(dev, s);

 comedi_event(dev, s);

 return events;
}
