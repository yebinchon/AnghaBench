
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int clock_ns; } ;
struct comedi_device {struct ni_private* private; } ;



__attribute__((used)) static unsigned int ni_timer_to_ns(const struct comedi_device *dev, int timer)
{
 struct ni_private *devpriv = dev->private;

 return devpriv->clock_ns * (timer + 1);
}
