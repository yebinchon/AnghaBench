
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;
struct usb_configuration {int dummy; } ;
struct g_audio {int * gadget; } ;


 struct g_audio* func_to_g_audio (struct usb_function*) ;
 int g_audio_cleanup (struct g_audio*) ;
 int usb_free_all_descriptors (struct usb_function*) ;

__attribute__((used)) static void f_audio_unbind(struct usb_configuration *c, struct usb_function *f)
{
 struct g_audio *audio = func_to_g_audio(f);

 g_audio_cleanup(audio);
 usb_free_all_descriptors(f);

 audio->gadget = ((void*)0);
}
