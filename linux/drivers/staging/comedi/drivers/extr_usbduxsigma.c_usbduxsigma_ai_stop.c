
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbduxsigma_private {scalar_t__ ai_cmd_running; int n_ai_urbs; scalar_t__ ai_urbs; } ;
struct comedi_device {struct usbduxsigma_private* private; } ;


 int usbduxsigma_unlink_urbs (scalar_t__,int ) ;

__attribute__((used)) static void usbduxsigma_ai_stop(struct comedi_device *dev, int do_unlink)
{
 struct usbduxsigma_private *devpriv = dev->private;

 if (do_unlink && devpriv->ai_urbs)
  usbduxsigma_unlink_urbs(devpriv->ai_urbs, devpriv->n_ai_urbs);

 devpriv->ai_cmd_running = 0;
}
