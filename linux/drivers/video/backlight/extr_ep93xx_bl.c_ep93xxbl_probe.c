
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dev; int name; } ;
struct ep93xxbl {int mmio; } ;
struct backlight_properties {int max_brightness; int type; } ;
struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int BACKLIGHT_RAW ;
 int ENOMEM ;
 int ENXIO ;
 int EP93XX_DEF_BRIGHT ;
 int EP93XX_MAX_BRIGHT ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int PTR_ERR (struct backlight_device*) ;
 struct backlight_device* devm_backlight_device_register (int *,int ,int *,struct ep93xxbl*,int *,struct backlight_properties*) ;
 int devm_ioremap (int *,int ,int ) ;
 struct ep93xxbl* devm_kzalloc (int *,int,int ) ;
 int ep93xxbl_ops ;
 int ep93xxbl_update_status (struct backlight_device*) ;
 int memset (struct backlight_properties*,int ,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct backlight_device*) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int ep93xxbl_probe(struct platform_device *dev)
{
 struct ep93xxbl *ep93xxbl;
 struct backlight_device *bl;
 struct backlight_properties props;
 struct resource *res;

 ep93xxbl = devm_kzalloc(&dev->dev, sizeof(*ep93xxbl), GFP_KERNEL);
 if (!ep93xxbl)
  return -ENOMEM;

 res = platform_get_resource(dev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENXIO;
 ep93xxbl->mmio = devm_ioremap(&dev->dev, res->start,
          resource_size(res));
 if (!ep93xxbl->mmio)
  return -ENXIO;

 memset(&props, 0, sizeof(struct backlight_properties));
 props.type = BACKLIGHT_RAW;
 props.max_brightness = EP93XX_MAX_BRIGHT;
 bl = devm_backlight_device_register(&dev->dev, dev->name, &dev->dev,
     ep93xxbl, &ep93xxbl_ops, &props);
 if (IS_ERR(bl))
  return PTR_ERR(bl);

 bl->props.brightness = EP93XX_DEF_BRIGHT;

 platform_set_drvdata(dev, bl);

 ep93xxbl_update_status(bl);

 return 0;
}
