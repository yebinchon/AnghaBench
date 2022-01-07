
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct powercap_control_type_ops {int release; } ;
struct TYPE_3__ {int * class; } ;
struct powercap_control_type {int allocated; int node; int idr; TYPE_1__ dev; struct powercap_control_type_ops const* ops; int lock; } ;


 int EINVAL ;
 int ENOMEM ;
 struct powercap_control_type* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_set_name (TYPE_1__*,char*,char const*) ;
 int device_register (TYPE_1__*) ;
 int idr_init (int *) ;
 int kfree (struct powercap_control_type*) ;
 struct powercap_control_type* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memset (struct powercap_control_type*,int ,int) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int powercap_class ;
 int powercap_cntrl_list ;
 int powercap_cntrl_list_lock ;

struct powercap_control_type *powercap_register_control_type(
    struct powercap_control_type *control_type,
    const char *name,
    const struct powercap_control_type_ops *ops)
{
 int result;

 if (!name)
  return ERR_PTR(-EINVAL);
 if (control_type) {
  if (!ops || !ops->release)
   return ERR_PTR(-EINVAL);
  memset(control_type, 0, sizeof(*control_type));
 } else {
  control_type = kzalloc(sizeof(*control_type), GFP_KERNEL);
  if (!control_type)
   return ERR_PTR(-ENOMEM);
  control_type->allocated = 1;
 }
 mutex_init(&control_type->lock);
 control_type->ops = ops;
 INIT_LIST_HEAD(&control_type->node);
 control_type->dev.class = &powercap_class;
 dev_set_name(&control_type->dev, "%s", name);
 result = device_register(&control_type->dev);
 if (result) {
  if (control_type->allocated)
   kfree(control_type);
  return ERR_PTR(result);
 }
 idr_init(&control_type->idr);

 mutex_lock(&powercap_cntrl_list_lock);
 list_add_tail(&control_type->node, &powercap_cntrl_list);
 mutex_unlock(&powercap_cntrl_list_lock);

 return control_type;
}
