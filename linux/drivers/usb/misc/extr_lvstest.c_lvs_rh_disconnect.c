
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct lvs_rh {int urb; int rh_work; } ;


 int flush_work (int *) ;
 int usb_free_urb (int ) ;
 struct lvs_rh* usb_get_intfdata (struct usb_interface*) ;
 int usb_poison_urb (int ) ;

__attribute__((used)) static void lvs_rh_disconnect(struct usb_interface *intf)
{
 struct lvs_rh *lvs = usb_get_intfdata(intf);

 usb_poison_urb(lvs->urb);
 flush_work(&lvs->rh_work);
 usb_free_urb(lvs->urb);
}
