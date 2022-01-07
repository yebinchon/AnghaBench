
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct device {int dummy; } ;
struct backlight_properties {scalar_t__ type; } ;
struct backlight_ops {int dummy; } ;
struct TYPE_7__ {int release; struct device* parent; int class; } ;
struct TYPE_8__ {void* type; } ;
struct backlight_device {int entry; struct backlight_ops const* ops; TYPE_1__ dev; TYPE_2__ props; int ops_lock; int update_lock; } ;


 void* BACKLIGHT_RAW ;
 int BACKLIGHT_REGISTERED ;
 scalar_t__ BACKLIGHT_TYPE_MAX ;
 int ENOMEM ;
 struct backlight_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int WARN (int,char*,char const*) ;
 int backlight_class ;
 int backlight_dev_list ;
 int backlight_dev_list_mutex ;
 int backlight_notifier ;
 int backlight_register_fb (struct backlight_device*) ;
 int bl_device_release ;
 int blocking_notifier_call_chain (int *,int ,struct backlight_device*) ;
 int dev_set_drvdata (TYPE_1__*,void*) ;
 int dev_set_name (TYPE_1__*,char*,char const*) ;
 int device_register (TYPE_1__*) ;
 int device_unregister (TYPE_1__*) ;
 struct backlight_device* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (TYPE_2__*,struct backlight_properties const*,int) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct backlight_device* pmac_backlight ;
 int pmac_backlight_mutex ;
 int pr_debug (char*,char const*) ;
 int put_device (TYPE_1__*) ;

struct backlight_device *backlight_device_register(const char *name,
 struct device *parent, void *devdata, const struct backlight_ops *ops,
 const struct backlight_properties *props)
{
 struct backlight_device *new_bd;
 int rc;

 pr_debug("backlight_device_register: name=%s\n", name);

 new_bd = kzalloc(sizeof(struct backlight_device), GFP_KERNEL);
 if (!new_bd)
  return ERR_PTR(-ENOMEM);

 mutex_init(&new_bd->update_lock);
 mutex_init(&new_bd->ops_lock);

 new_bd->dev.class = backlight_class;
 new_bd->dev.parent = parent;
 new_bd->dev.release = bl_device_release;
 dev_set_name(&new_bd->dev, "%s", name);
 dev_set_drvdata(&new_bd->dev, devdata);


 if (props) {
  memcpy(&new_bd->props, props,
         sizeof(struct backlight_properties));
  if (props->type <= 0 || props->type >= BACKLIGHT_TYPE_MAX) {
   WARN(1, "%s: invalid backlight type", name);
   new_bd->props.type = BACKLIGHT_RAW;
  }
 } else {
  new_bd->props.type = BACKLIGHT_RAW;
 }

 rc = device_register(&new_bd->dev);
 if (rc) {
  put_device(&new_bd->dev);
  return ERR_PTR(rc);
 }

 rc = backlight_register_fb(new_bd);
 if (rc) {
  device_unregister(&new_bd->dev);
  return ERR_PTR(rc);
 }

 new_bd->ops = ops;
 mutex_lock(&backlight_dev_list_mutex);
 list_add(&new_bd->entry, &backlight_dev_list);
 mutex_unlock(&backlight_dev_list_mutex);

 blocking_notifier_call_chain(&backlight_notifier,
         BACKLIGHT_REGISTERED, new_bd);

 return new_bd;
}
