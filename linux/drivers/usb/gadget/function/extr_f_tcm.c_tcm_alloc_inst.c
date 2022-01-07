
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_function_instance {int group; int free_func_inst; int set_inst_name; } ;
struct f_tcm_opts {struct usb_function_instance func_inst; int tcm_unregister_callback; int tcm_register_callback; int dep_lock; } ;
struct TYPE_2__ {struct usb_function_instance* func_inst; } ;


 int EBUSY ;
 int ENOMEM ;
 struct usb_function_instance* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int TPG_INSTANCES ;
 int config_group_init_type_name (int *,char*,int *) ;
 int kfree (struct f_tcm_opts*) ;
 struct f_tcm_opts* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tcm_free_inst ;
 int tcm_func_type ;
 int tcm_register_callback ;
 int tcm_set_name ;
 int tcm_unregister_callback ;
 TYPE_1__* tpg_instances ;
 int tpg_instances_lock ;

__attribute__((used)) static struct usb_function_instance *tcm_alloc_inst(void)
{
 struct f_tcm_opts *opts;
 int i;


 opts = kzalloc(sizeof(*opts), GFP_KERNEL);
 if (!opts)
  return ERR_PTR(-ENOMEM);

 mutex_lock(&tpg_instances_lock);
 for (i = 0; i < TPG_INSTANCES; ++i)
  if (!tpg_instances[i].func_inst)
   break;

 if (i == TPG_INSTANCES) {
  mutex_unlock(&tpg_instances_lock);
  kfree(opts);
  return ERR_PTR(-EBUSY);
 }
 tpg_instances[i].func_inst = &opts->func_inst;
 mutex_unlock(&tpg_instances_lock);

 mutex_init(&opts->dep_lock);
 opts->func_inst.set_inst_name = tcm_set_name;
 opts->func_inst.free_func_inst = tcm_free_inst;
 opts->tcm_register_callback = tcm_register_callback;
 opts->tcm_unregister_callback = tcm_unregister_callback;

 config_group_init_type_name(&opts->func_inst.group, "",
   &tcm_func_type);

 return &opts->func_inst;
}
