
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_sevsegdev {int shadow_power; } ;
struct usb_interface {int dummy; } ;


 int GFP_NOIO ;
 int update_display_mode (struct usb_sevsegdev*) ;
 int update_display_visual (struct usb_sevsegdev*,int ) ;
 struct usb_sevsegdev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int sevseg_reset_resume(struct usb_interface *intf)
{
 struct usb_sevsegdev *mydev;

 mydev = usb_get_intfdata(intf);
 mydev->shadow_power = 1;
 update_display_mode(mydev);
 update_display_visual(mydev, GFP_NOIO);

 return 0;
}
