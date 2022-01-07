
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct lcd_ops {int dummy; } ;
struct TYPE_6__ {int release; struct device* parent; int class; } ;
struct lcd_device {TYPE_1__ dev; struct lcd_ops* ops; int update_lock; int ops_lock; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct lcd_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int dev_set_drvdata (TYPE_1__*,void*) ;
 int dev_set_name (TYPE_1__*,char*,char const*) ;
 int device_register (TYPE_1__*) ;
 int device_unregister (TYPE_1__*) ;
 struct lcd_device* kzalloc (int,int ) ;
 int lcd_class ;
 int lcd_device_release ;
 int lcd_register_fb (struct lcd_device*) ;
 int mutex_init (int *) ;
 int pr_debug (char*,char const*) ;
 int put_device (TYPE_1__*) ;

struct lcd_device *lcd_device_register(const char *name, struct device *parent,
  void *devdata, struct lcd_ops *ops)
{
 struct lcd_device *new_ld;
 int rc;

 pr_debug("lcd_device_register: name=%s\n", name);

 new_ld = kzalloc(sizeof(struct lcd_device), GFP_KERNEL);
 if (!new_ld)
  return ERR_PTR(-ENOMEM);

 mutex_init(&new_ld->ops_lock);
 mutex_init(&new_ld->update_lock);

 new_ld->dev.class = lcd_class;
 new_ld->dev.parent = parent;
 new_ld->dev.release = lcd_device_release;
 dev_set_name(&new_ld->dev, "%s", name);
 dev_set_drvdata(&new_ld->dev, devdata);

 new_ld->ops = ops;

 rc = device_register(&new_ld->dev);
 if (rc) {
  put_device(&new_ld->dev);
  return ERR_PTR(rc);
 }

 rc = lcd_register_fb(new_ld);
 if (rc) {
  device_unregister(&new_ld->dev);
  return ERR_PTR(rc);
 }

 return new_ld;
}
