
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdux_private {scalar_t__ ai_cmd_running; int n_ai_urbs; scalar_t__ ai_urbs; } ;
struct comedi_device {struct usbdux_private* private; } ;


 int usbdux_unlink_urbs (scalar_t__,int ) ;

__attribute__((used)) static void usbdux_ai_stop(struct comedi_device *dev, int do_unlink)
{
 struct usbdux_private *devpriv = dev->private;

 if (do_unlink && devpriv->ai_urbs)
  usbdux_unlink_urbs(devpriv->ai_urbs, devpriv->n_ai_urbs);

 devpriv->ai_cmd_running = 0;
}
