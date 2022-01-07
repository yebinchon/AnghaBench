
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbduxsigma_private {int mut; int ai_cmd_running; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct usbduxsigma_private* private; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usbduxsigma_ai_stop (struct comedi_device*,int ) ;

__attribute__((used)) static int usbduxsigma_ai_cancel(struct comedi_device *dev,
     struct comedi_subdevice *s)
{
 struct usbduxsigma_private *devpriv = dev->private;

 mutex_lock(&devpriv->mut);

 usbduxsigma_ai_stop(dev, devpriv->ai_cmd_running);
 mutex_unlock(&devpriv->mut);

 return 0;
}
