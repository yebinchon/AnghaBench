
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;
struct f_loopback {int dummy; } ;


 int disable_loopback (struct f_loopback*) ;
 struct f_loopback* func_to_loop (struct usb_function*) ;

__attribute__((used)) static void loopback_disable(struct usb_function *f)
{
 struct f_loopback *loop = func_to_loop(f);

 disable_loopback(loop);
}
