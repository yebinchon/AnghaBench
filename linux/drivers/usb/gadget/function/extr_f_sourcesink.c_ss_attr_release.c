
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f_ss_opts {int func_inst; } ;
struct config_item {int dummy; } ;


 struct f_ss_opts* to_f_ss_opts (struct config_item*) ;
 int usb_put_function_instance (int *) ;

__attribute__((used)) static void ss_attr_release(struct config_item *item)
{
 struct f_ss_opts *ss_opts = to_f_ss_opts(item);

 usb_put_function_instance(&ss_opts->func_inst);
}
