
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct regmap {int dummy; } ;
struct pm8941_wled {int name; struct regmap* regmap; } ;
struct TYPE_6__ {int of_node; int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct backlight_properties {int max_brightness; int brightness; int type; } ;
struct backlight_device {int dummy; } ;


 int BACKLIGHT_RAW ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PM8941_WLED_DEFAULT_BRIGHTNESS ;
 int PM8941_WLED_REG_VAL_MAX ;
 int PTR_ERR_OR_ZERO (struct backlight_device*) ;
 int dev_err (TYPE_1__*,char*) ;
 struct regmap* dev_get_regmap (int ,int *) ;
 struct backlight_device* devm_backlight_device_register (TYPE_1__*,int ,TYPE_1__*,struct pm8941_wled*,int *,struct backlight_properties*) ;
 struct pm8941_wled* devm_kzalloc (TYPE_1__*,int,int ) ;
 int memset (struct backlight_properties*,int ,int) ;
 int of_property_read_u32 (int ,char*,int *) ;
 int pm8941_wled_configure (struct pm8941_wled*,TYPE_1__*) ;
 int pm8941_wled_ops ;
 int pm8941_wled_setup (struct pm8941_wled*) ;

__attribute__((used)) static int pm8941_wled_probe(struct platform_device *pdev)
{
 struct backlight_properties props;
 struct backlight_device *bl;
 struct pm8941_wled *wled;
 struct regmap *regmap;
 u32 val;
 int rc;

 regmap = dev_get_regmap(pdev->dev.parent, ((void*)0));
 if (!regmap) {
  dev_err(&pdev->dev, "Unable to get regmap\n");
  return -EINVAL;
 }

 wled = devm_kzalloc(&pdev->dev, sizeof(*wled), GFP_KERNEL);
 if (!wled)
  return -ENOMEM;

 wled->regmap = regmap;

 rc = pm8941_wled_configure(wled, &pdev->dev);
 if (rc)
  return rc;

 rc = pm8941_wled_setup(wled);
 if (rc)
  return rc;

 val = PM8941_WLED_DEFAULT_BRIGHTNESS;
 of_property_read_u32(pdev->dev.of_node, "default-brightness", &val);

 memset(&props, 0, sizeof(struct backlight_properties));
 props.type = BACKLIGHT_RAW;
 props.brightness = val;
 props.max_brightness = PM8941_WLED_REG_VAL_MAX;
 bl = devm_backlight_device_register(&pdev->dev, wled->name,
         &pdev->dev, wled,
         &pm8941_wled_ops, &props);
 return PTR_ERR_OR_ZERO(bl);
}
