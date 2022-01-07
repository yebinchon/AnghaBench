
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;
struct f_uac1 {int g_audio; scalar_t__ as_in_alt; scalar_t__ as_out_alt; } ;


 struct f_uac1* func_to_uac1 (struct usb_function*) ;
 int u_audio_stop_capture (int *) ;

__attribute__((used)) static void f_audio_disable(struct usb_function *f)
{
 struct f_uac1 *uac1 = func_to_uac1(f);

 uac1->as_out_alt = 0;
 uac1->as_in_alt = 0;

 u_audio_stop_capture(&uac1->g_audio);
}
