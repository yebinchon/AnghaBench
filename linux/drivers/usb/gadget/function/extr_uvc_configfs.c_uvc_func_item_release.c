
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f_uvc_opts {int func_inst; } ;
struct config_item {int dummy; } ;


 int to_config_group (struct config_item*) ;
 struct f_uvc_opts* to_f_uvc_opts (struct config_item*) ;
 int usb_put_function_instance (int *) ;
 int uvcg_config_remove_children (int ) ;

__attribute__((used)) static void uvc_func_item_release(struct config_item *item)
{
 struct f_uvc_opts *opts = to_f_uvc_opts(item);

 uvcg_config_remove_children(to_config_group(item));
 usb_put_function_instance(&opts->func_inst);
}
