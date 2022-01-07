
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbduxfast_private {scalar_t__ urb; scalar_t__ ai_cmd_running; } ;
struct comedi_device {struct usbduxfast_private* private; } ;


 int usb_kill_urb (scalar_t__) ;

__attribute__((used)) static int usbduxfast_ai_stop(struct comedi_device *dev, int do_unlink)
{
 struct usbduxfast_private *devpriv = dev->private;


 devpriv->ai_cmd_running = 0;

 if (do_unlink && devpriv->urb) {

  usb_kill_urb(devpriv->urb);
 }

 return 0;
}
