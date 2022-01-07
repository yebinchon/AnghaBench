
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdux_private {int mut; int ao_cmd_running; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct usbdux_private* private; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usbdux_ao_stop (struct comedi_device*,int ) ;

__attribute__((used)) static int usbdux_ao_cancel(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct usbdux_private *devpriv = dev->private;


 mutex_lock(&devpriv->mut);

 usbdux_ao_stop(dev, devpriv->ao_cmd_running);
 mutex_unlock(&devpriv->mut);

 return 0;
}
