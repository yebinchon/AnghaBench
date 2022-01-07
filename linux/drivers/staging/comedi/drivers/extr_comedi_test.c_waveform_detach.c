
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waveform_private {int ao_timer; int ai_timer; } ;
struct comedi_device {struct waveform_private* private; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static void waveform_detach(struct comedi_device *dev)
{
 struct waveform_private *devpriv = dev->private;

 if (devpriv) {
  del_timer_sync(&devpriv->ai_timer);
  del_timer_sync(&devpriv->ao_timer);
 }
}
