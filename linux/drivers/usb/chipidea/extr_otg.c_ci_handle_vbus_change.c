
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_hdrc {int gadget; scalar_t__ vbus_active; int is_otg; } ;


 int OTGSC_BSV ;
 scalar_t__ hw_read_otgsc (struct ci_hdrc*,int ) ;
 int usb_gadget_vbus_connect (int *) ;
 int usb_gadget_vbus_disconnect (int *) ;

void ci_handle_vbus_change(struct ci_hdrc *ci)
{
 if (!ci->is_otg)
  return;

 if (hw_read_otgsc(ci, OTGSC_BSV) && !ci->vbus_active)
  usb_gadget_vbus_connect(&ci->gadget);
 else if (!hw_read_otgsc(ci, OTGSC_BSV) && ci->vbus_active)
  usb_gadget_vbus_disconnect(&ci->gadget);
}
