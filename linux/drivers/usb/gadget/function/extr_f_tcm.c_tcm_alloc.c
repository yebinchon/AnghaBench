
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_function_instance {int dummy; } ;
struct usb_function {char* name; int free_func; int disable; int setup; int set_alt; int unbind; int bind; } ;
struct f_uas {struct usb_function function; int tpg; } ;
struct TYPE_2__ {int tpg; struct usb_function_instance* func_inst; } ;


 int ENODEV ;
 int ENOMEM ;
 struct usb_function* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 unsigned int TPG_INSTANCES ;
 struct f_uas* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tcm_bind ;
 int tcm_disable ;
 int tcm_free ;
 int tcm_set_alt ;
 int tcm_setup ;
 int tcm_unbind ;
 TYPE_1__* tpg_instances ;
 int tpg_instances_lock ;

__attribute__((used)) static struct usb_function *tcm_alloc(struct usb_function_instance *fi)
{
 struct f_uas *fu;
 unsigned i;

 mutex_lock(&tpg_instances_lock);
 for (i = 0; i < TPG_INSTANCES; ++i)
  if (tpg_instances[i].func_inst == fi)
   break;
 if (i == TPG_INSTANCES) {
  mutex_unlock(&tpg_instances_lock);
  return ERR_PTR(-ENODEV);
 }

 fu = kzalloc(sizeof(*fu), GFP_KERNEL);
 if (!fu) {
  mutex_unlock(&tpg_instances_lock);
  return ERR_PTR(-ENOMEM);
 }

 fu->function.name = "Target Function";
 fu->function.bind = tcm_bind;
 fu->function.unbind = tcm_unbind;
 fu->function.set_alt = tcm_set_alt;
 fu->function.setup = tcm_setup;
 fu->function.disable = tcm_disable;
 fu->function.free_func = tcm_free;
 fu->tpg = tpg_instances[i].tpg;
 mutex_unlock(&tpg_instances_lock);

 return &fu->function;
}
