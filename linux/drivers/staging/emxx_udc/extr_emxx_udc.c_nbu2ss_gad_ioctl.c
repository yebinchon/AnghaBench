
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;



__attribute__((used)) static int nbu2ss_gad_ioctl(struct usb_gadget *pgadget,
       unsigned int code, unsigned long param)
{
 return 0;
}
