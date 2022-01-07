
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_lcd {int dummy; } ;
struct usb_interface {int dummy; } ;
typedef int pm_message_t ;


 int lcd_draw_down (struct usb_lcd*) ;
 struct usb_lcd* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int lcd_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct usb_lcd *dev = usb_get_intfdata(intf);

 if (!dev)
  return 0;
 lcd_draw_down(dev);
 return 0;
}
