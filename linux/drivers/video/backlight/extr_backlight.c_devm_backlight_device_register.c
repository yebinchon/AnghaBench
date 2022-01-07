
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct backlight_properties {int dummy; } ;
struct backlight_ops {int dummy; } ;
struct backlight_device {int dummy; } ;


 int ENOMEM ;
 struct backlight_device* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct backlight_device*) ;
 struct backlight_device* backlight_device_register (char const*,struct device*,void*,struct backlight_ops const*,struct backlight_properties const*) ;
 int devm_backlight_device_release ;
 int devres_add (struct device*,struct backlight_device**) ;
 struct backlight_device** devres_alloc (int ,int,int ) ;
 int devres_free (struct backlight_device**) ;

struct backlight_device *devm_backlight_device_register(struct device *dev,
 const char *name, struct device *parent, void *devdata,
 const struct backlight_ops *ops,
 const struct backlight_properties *props)
{
 struct backlight_device **ptr, *backlight;

 ptr = devres_alloc(devm_backlight_device_release, sizeof(*ptr),
   GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 backlight = backlight_device_register(name, parent, devdata, ops,
      props);
 if (!IS_ERR(backlight)) {
  *ptr = backlight;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return backlight;
}
