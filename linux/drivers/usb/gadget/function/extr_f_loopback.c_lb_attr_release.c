
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f_lb_opts {int func_inst; } ;
struct config_item {int dummy; } ;


 struct f_lb_opts* to_f_lb_opts (struct config_item*) ;
 int usb_put_function_instance (int *) ;

__attribute__((used)) static void lb_attr_release(struct config_item *item)
{
 struct f_lb_opts *lb_opts = to_f_lb_opts(item);

 usb_put_function_instance(&lb_opts->func_inst);
}
