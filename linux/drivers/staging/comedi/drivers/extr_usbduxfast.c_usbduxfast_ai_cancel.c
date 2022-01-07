
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbduxfast_private {int mut; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct usbduxfast_private* private; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usbduxfast_ai_stop (struct comedi_device*,int) ;

__attribute__((used)) static int usbduxfast_ai_cancel(struct comedi_device *dev,
    struct comedi_subdevice *s)
{
 struct usbduxfast_private *devpriv = dev->private;
 int ret;

 mutex_lock(&devpriv->mut);
 ret = usbduxfast_ai_stop(dev, 1);
 mutex_unlock(&devpriv->mut);

 return ret;
}
