
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;
struct f_obex {int cur_alt; } ;


 struct f_obex* func_to_obex (struct usb_function*) ;

__attribute__((used)) static int obex_get_alt(struct usb_function *f, unsigned intf)
{
 struct f_obex *obex = func_to_obex(f);

 return obex->cur_alt;
}
