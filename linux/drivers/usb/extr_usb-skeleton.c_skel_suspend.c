
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_skel {int dummy; } ;
struct usb_interface {int dummy; } ;
typedef int pm_message_t ;


 int skel_draw_down (struct usb_skel*) ;
 struct usb_skel* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int skel_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct usb_skel *dev = usb_get_intfdata(intf);

 if (!dev)
  return 0;
 skel_draw_down(dev);
 return 0;
}
