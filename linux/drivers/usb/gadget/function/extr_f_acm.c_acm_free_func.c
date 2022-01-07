
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;
struct f_acm {int dummy; } ;


 struct f_acm* func_to_acm (struct usb_function*) ;
 int kfree (struct f_acm*) ;

__attribute__((used)) static void acm_free_func(struct usb_function *f)
{
 struct f_acm *acm = func_to_acm(f);

 kfree(acm);
}
