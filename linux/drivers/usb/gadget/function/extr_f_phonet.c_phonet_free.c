
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;
struct f_phonet {int dummy; } ;


 struct f_phonet* func_to_pn (struct usb_function*) ;
 int kfree (struct f_phonet*) ;

__attribute__((used)) static void phonet_free(struct usb_function *f)
{
 struct f_phonet *phonet;

 phonet = func_to_pn(f);
 kfree(phonet);
}
