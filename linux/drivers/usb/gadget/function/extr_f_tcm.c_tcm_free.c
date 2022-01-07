
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;
struct f_uas {int dummy; } ;


 int kfree (struct f_uas*) ;
 struct f_uas* to_f_uas (struct usb_function*) ;

__attribute__((used)) static void tcm_free(struct usb_function *f)
{
 struct f_uas *tcm = to_f_uas(f);

 kfree(tcm);
}
