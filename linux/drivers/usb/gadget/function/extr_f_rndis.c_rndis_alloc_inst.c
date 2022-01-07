
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_os_desc {int ext_prop; int ext_compat_id; } ;
struct usb_function_instance {int group; int (* free_func_inst ) (struct usb_function_instance*) ;} ;
struct net_device {int dummy; } ;
struct f_rndis_opts {struct usb_function_instance func_inst; struct net_device* rndis_interf_group; struct usb_os_desc rndis_os_desc; int protocol; int subclass; int class; struct net_device* net; int lock; int rndis_ext_compat_id; } ;
typedef struct net_device config_group ;
struct TYPE_2__ {int bFunctionProtocol; int bFunctionSubClass; int bFunctionClass; } ;


 int ENOMEM ;
 struct usb_function_instance* ERR_CAST (struct net_device*) ;
 struct usb_function_instance* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct net_device*) ;
 int THIS_MODULE ;
 int config_group_init_type_name (int *,char*,int *) ;
 struct net_device* gether_setup_default () ;
 int kfree (struct f_rndis_opts*) ;
 struct f_rndis_opts* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int rndis_free_inst (struct usb_function_instance*) ;
 int rndis_func_type ;
 TYPE_1__ rndis_iad_descriptor ;
 struct net_device* usb_os_desc_prepare_interf_dir (int *,int,struct usb_os_desc**,char**,int ) ;

__attribute__((used)) static struct usb_function_instance *rndis_alloc_inst(void)
{
 struct f_rndis_opts *opts;
 struct usb_os_desc *descs[1];
 char *names[1];
 struct config_group *rndis_interf_group;

 opts = kzalloc(sizeof(*opts), GFP_KERNEL);
 if (!opts)
  return ERR_PTR(-ENOMEM);
 opts->rndis_os_desc.ext_compat_id = opts->rndis_ext_compat_id;

 mutex_init(&opts->lock);
 opts->func_inst.free_func_inst = rndis_free_inst;
 opts->net = gether_setup_default();
 if (IS_ERR(opts->net)) {
  struct net_device *net = opts->net;
  kfree(opts);
  return ERR_CAST(net);
 }
 INIT_LIST_HEAD(&opts->rndis_os_desc.ext_prop);

 opts->class = rndis_iad_descriptor.bFunctionClass;
 opts->subclass = rndis_iad_descriptor.bFunctionSubClass;
 opts->protocol = rndis_iad_descriptor.bFunctionProtocol;

 descs[0] = &opts->rndis_os_desc;
 names[0] = "rndis";
 config_group_init_type_name(&opts->func_inst.group, "",
        &rndis_func_type);
 rndis_interf_group =
  usb_os_desc_prepare_interf_dir(&opts->func_inst.group, 1, descs,
            names, THIS_MODULE);
 if (IS_ERR(rndis_interf_group)) {
  rndis_free_inst(&opts->func_inst);
  return ERR_CAST(rndis_interf_group);
 }
 opts->rndis_interf_group = rndis_interf_group;

 return &opts->func_inst;
}
