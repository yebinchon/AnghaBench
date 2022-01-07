
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function_instance {int group; int free_func_inst; } ;
struct net_device {int dummy; } ;
struct f_ecm_opts {struct usb_function_instance func_inst; struct net_device* net; int lock; } ;


 int ENOMEM ;
 struct usb_function_instance* ERR_CAST (struct net_device*) ;
 struct usb_function_instance* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct net_device*) ;
 int config_group_init_type_name (int *,char*,int *) ;
 int ecm_free_inst ;
 int ecm_func_type ;
 struct net_device* gether_setup_default () ;
 int kfree (struct f_ecm_opts*) ;
 struct f_ecm_opts* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct usb_function_instance *ecm_alloc_inst(void)
{
 struct f_ecm_opts *opts;

 opts = kzalloc(sizeof(*opts), GFP_KERNEL);
 if (!opts)
  return ERR_PTR(-ENOMEM);
 mutex_init(&opts->lock);
 opts->func_inst.free_func_inst = ecm_free_inst;
 opts->net = gether_setup_default();
 if (IS_ERR(opts->net)) {
  struct net_device *net = opts->net;
  kfree(opts);
  return ERR_CAST(net);
 }

 config_group_init_type_name(&opts->func_inst.group, "", &ecm_func_type);

 return &opts->func_inst;
}
