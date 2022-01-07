
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;
struct f_gser {int dummy; } ;


 struct f_gser* func_to_gser (struct usb_function*) ;
 int kfree (struct f_gser*) ;

__attribute__((used)) static void gser_free(struct usb_function *f)
{
 struct f_gser *serial;

 serial = func_to_gser(f);
 kfree(serial);
}
