
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;
struct f_gether {int dummy; } ;


 struct f_gether* func_to_geth (struct usb_function*) ;
 int kfree (struct f_gether*) ;

__attribute__((used)) static void geth_free(struct usb_function *f)
{
 struct f_gether *eth;

 eth = func_to_geth(f);
 kfree(eth);
}
