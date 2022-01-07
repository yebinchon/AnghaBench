
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function_instance {int dummy; } ;
struct f_uvc_opts {int lock; } ;


 struct f_uvc_opts* fi_to_f_uvc_opts (struct usb_function_instance*) ;
 int kfree (struct f_uvc_opts*) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void uvc_free_inst(struct usb_function_instance *f)
{
 struct f_uvc_opts *opts = fi_to_f_uvc_opts(f);

 mutex_destroy(&opts->lock);
 kfree(opts);
}
