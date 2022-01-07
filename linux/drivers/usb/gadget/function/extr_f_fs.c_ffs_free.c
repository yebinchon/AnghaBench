
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;


 int ffs_func_from_usb (struct usb_function*) ;
 int kfree (int ) ;

__attribute__((used)) static void ffs_free(struct usb_function *f)
{
 kfree(ffs_func_from_usb(f));
}
