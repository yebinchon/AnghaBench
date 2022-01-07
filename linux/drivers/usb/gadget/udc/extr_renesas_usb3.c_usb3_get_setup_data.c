
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct usb_ctrlrequest {int bRequestType; } ;
struct renesas_usb3_ep {int dir_in; } ;
struct renesas_usb3 {int dummy; } ;


 int USB3_STUP_DAT_0 ;
 int USB3_STUP_DAT_1 ;
 int USB_DIR_IN ;
 struct renesas_usb3_ep* usb3_get_ep (struct renesas_usb3*,int ) ;
 void* usb3_read (struct renesas_usb3*,int ) ;

__attribute__((used)) static void usb3_get_setup_data(struct renesas_usb3 *usb3,
    struct usb_ctrlrequest *ctrl)
{
 struct renesas_usb3_ep *usb3_ep = usb3_get_ep(usb3, 0);
 u32 *data = (u32 *)ctrl;

 *data++ = usb3_read(usb3, USB3_STUP_DAT_0);
 *data = usb3_read(usb3, USB3_STUP_DAT_1);


 usb3_ep->dir_in = !!(ctrl->bRequestType & USB_DIR_IN);
}
