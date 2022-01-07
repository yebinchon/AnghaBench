
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function_instance {int group; int free_func_inst; } ;
struct f_serial_opts {struct usb_function_instance func_inst; int port_num; } ;


 int ENOMEM ;
 struct usb_function_instance* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int acm_free_instance ;
 int acm_func_type ;
 int config_group_init_type_name (int *,char*,int *) ;
 int gserial_alloc_line (int *) ;
 int kfree (struct f_serial_opts*) ;
 struct f_serial_opts* kzalloc (int,int ) ;

__attribute__((used)) static struct usb_function_instance *acm_alloc_instance(void)
{
 struct f_serial_opts *opts;
 int ret;

 opts = kzalloc(sizeof(*opts), GFP_KERNEL);
 if (!opts)
  return ERR_PTR(-ENOMEM);
 opts->func_inst.free_func_inst = acm_free_instance;
 ret = gserial_alloc_line(&opts->port_num);
 if (ret) {
  kfree(opts);
  return ERR_PTR(ret);
 }
 config_group_init_type_name(&opts->func_inst.group, "",
   &acm_func_type);
 return &opts->func_inst;
}
