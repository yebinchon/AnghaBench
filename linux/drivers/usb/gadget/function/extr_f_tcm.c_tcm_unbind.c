
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;
struct usb_configuration {int dummy; } ;


 int usb_free_all_descriptors (struct usb_function*) ;

__attribute__((used)) static void tcm_unbind(struct usb_configuration *c, struct usb_function *f)
{
 usb_free_all_descriptors(f);
}
