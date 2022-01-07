
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_ops {int dummy; } ;
struct lcd_device {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct lcd_device* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct lcd_device*) ;
 int devm_lcd_device_release ;
 int devres_add (struct device*,struct lcd_device**) ;
 struct lcd_device** devres_alloc (int ,int,int ) ;
 int devres_free (struct lcd_device**) ;
 struct lcd_device* lcd_device_register (char const*,struct device*,void*,struct lcd_ops*) ;

struct lcd_device *devm_lcd_device_register(struct device *dev,
  const char *name, struct device *parent,
  void *devdata, struct lcd_ops *ops)
{
 struct lcd_device **ptr, *lcd;

 ptr = devres_alloc(devm_lcd_device_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 lcd = lcd_device_register(name, parent, devdata, ops);
 if (!IS_ERR(lcd)) {
  *ptr = lcd;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return lcd;
}
