
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function_instance {int group; int free_func_inst; } ;
struct f_lb_opts {struct usb_function_instance func_inst; int qlen; int bulk_buflen; int lock; } ;


 int ENOMEM ;
 struct usb_function_instance* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int GZERO_BULK_BUFLEN ;
 int GZERO_QLEN ;
 int config_group_init_type_name (int *,char*,int *) ;
 struct f_lb_opts* kzalloc (int,int ) ;
 int lb_free_instance ;
 int lb_func_type ;
 int mutex_init (int *) ;

__attribute__((used)) static struct usb_function_instance *loopback_alloc_instance(void)
{
 struct f_lb_opts *lb_opts;

 lb_opts = kzalloc(sizeof(*lb_opts), GFP_KERNEL);
 if (!lb_opts)
  return ERR_PTR(-ENOMEM);
 mutex_init(&lb_opts->lock);
 lb_opts->func_inst.free_func_inst = lb_free_instance;
 lb_opts->bulk_buflen = GZERO_BULK_BUFLEN;
 lb_opts->qlen = GZERO_QLEN;

 config_group_init_type_name(&lb_opts->func_inst.group, "",
        &lb_func_type);

 return &lb_opts->func_inst;
}
