
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;
struct f_sourcesink {int cur_alt; } ;


 struct f_sourcesink* func_to_ss (struct usb_function*) ;

__attribute__((used)) static int sourcesink_get_alt(struct usb_function *f, unsigned intf)
{
 struct f_sourcesink *ss = func_to_ss(f);

 return ss->cur_alt;
}
