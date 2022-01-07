
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;
struct f_obex {int dummy; } ;


 struct f_obex* func_to_obex (struct usb_function*) ;
 int kfree (struct f_obex*) ;

__attribute__((used)) static void obex_free(struct usb_function *f)
{
 struct f_obex *obex;

 obex = func_to_obex(f);
 kfree(obex);
}
