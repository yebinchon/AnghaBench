
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;


 int s3c_hsudc_read_frameno (int ) ;
 int to_hsudc (struct usb_gadget*) ;

__attribute__((used)) static int s3c_hsudc_gadget_getframe(struct usb_gadget *gadget)
{
 return s3c_hsudc_read_frameno(to_hsudc(gadget));
}
