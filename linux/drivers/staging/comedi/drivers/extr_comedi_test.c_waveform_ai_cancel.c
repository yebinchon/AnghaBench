
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waveform_private {int ai_timer; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct waveform_private* private; } ;


 int del_timer (int *) ;
 int del_timer_sync (int *) ;
 scalar_t__ in_softirq () ;

__attribute__((used)) static int waveform_ai_cancel(struct comedi_device *dev,
         struct comedi_subdevice *s)
{
 struct waveform_private *devpriv = dev->private;

 if (in_softirq()) {

  del_timer(&devpriv->ai_timer);
 } else {
  del_timer_sync(&devpriv->ai_timer);
 }
 return 0;
}
