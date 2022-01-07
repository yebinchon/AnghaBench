
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usblp {int rwait; int wwait; } ;
struct usb_interface {int dummy; } ;
typedef int pm_message_t ;


 struct usblp* usb_get_intfdata (struct usb_interface*) ;
 int usblp_unlink_urbs (struct usblp*) ;
 int wake_up (int *) ;

__attribute__((used)) static int usblp_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct usblp *usblp = usb_get_intfdata(intf);

 usblp_unlink_urbs(usblp);






 return 0;
}
