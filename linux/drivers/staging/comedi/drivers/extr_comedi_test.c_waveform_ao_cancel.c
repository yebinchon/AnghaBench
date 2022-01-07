
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct waveform_private {int ao_timer; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct waveform_private* private; } ;
struct TYPE_2__ {int * inttrig; } ;


 int del_timer (int *) ;
 int del_timer_sync (int *) ;
 scalar_t__ in_softirq () ;

__attribute__((used)) static int waveform_ao_cancel(struct comedi_device *dev,
         struct comedi_subdevice *s)
{
 struct waveform_private *devpriv = dev->private;

 s->async->inttrig = ((void*)0);
 if (in_softirq()) {

  del_timer(&devpriv->ao_timer);
 } else {
  del_timer_sync(&devpriv->ao_timer);
 }
 return 0;
}
