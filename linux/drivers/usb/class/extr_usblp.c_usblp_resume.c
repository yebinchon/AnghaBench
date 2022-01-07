
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usblp {int dummy; } ;
struct usb_interface {int dummy; } ;


 int handle_bidir (struct usblp*) ;
 struct usblp* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int usblp_resume(struct usb_interface *intf)
{
 struct usblp *usblp = usb_get_intfdata(intf);
 int r;

 r = handle_bidir(usblp);

 return r;
}
