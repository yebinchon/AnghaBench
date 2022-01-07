
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_frame ) (struct usb_gadget*) ;} ;


 int stub1 (struct usb_gadget*) ;
 int trace_usb_gadget_frame_number (struct usb_gadget*,int) ;

int usb_gadget_frame_number(struct usb_gadget *gadget)
{
 int ret;

 ret = gadget->ops->get_frame(gadget);

 trace_usb_gadget_frame_number(gadget, ret);

 return ret;
}
