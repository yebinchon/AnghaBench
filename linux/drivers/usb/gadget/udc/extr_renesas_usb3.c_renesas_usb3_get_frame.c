
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int renesas_usb3_get_frame(struct usb_gadget *_gadget)
{
 return -EOPNOTSUPP;
}
