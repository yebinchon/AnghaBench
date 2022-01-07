
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_7__ {struct max8925_backlight_pdata* platform_data; int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct max8925_chip {int i2c; } ;
struct max8925_backlight_pdata {scalar_t__ dual_string; scalar_t__ lxw_freq; scalar_t__ lxw_scl; } ;
struct max8925_backlight_data {int reg_mode_cntl; scalar_t__ current_brightness; struct max8925_chip* chip; int reg_cntl; } ;
struct backlight_properties {void* max_brightness; int type; } ;
struct TYPE_6__ {void* brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int BACKLIGHT_RAW ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_REG ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int LWX_FREQ (scalar_t__) ;
 void* MAX_BRIGHTNESS ;
 int PTR_ERR (struct backlight_device*) ;
 int backlight_update_status (struct backlight_device*) ;
 int dev_err (TYPE_2__*,char*) ;
 struct max8925_chip* dev_get_drvdata (int ) ;
 struct backlight_device* devm_backlight_device_register (TYPE_2__*,char*,TYPE_2__*,struct max8925_backlight_data*,int *,struct backlight_properties*) ;
 struct max8925_backlight_data* devm_kzalloc (TYPE_2__*,int,int ) ;
 int max8925_backlight_dt_init (struct platform_device*) ;
 int max8925_backlight_ops ;
 int max8925_set_bits (int ,int ,int,unsigned char) ;
 int memset (struct backlight_properties*,int ,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct backlight_device*) ;

__attribute__((used)) static int max8925_backlight_probe(struct platform_device *pdev)
{
 struct max8925_chip *chip = dev_get_drvdata(pdev->dev.parent);
 struct max8925_backlight_pdata *pdata;
 struct max8925_backlight_data *data;
 struct backlight_device *bl;
 struct backlight_properties props;
 struct resource *res;
 unsigned char value;
 int ret = 0;

 data = devm_kzalloc(&pdev->dev, sizeof(struct max8925_backlight_data),
       GFP_KERNEL);
 if (data == ((void*)0))
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_REG, 0);
 if (!res) {
  dev_err(&pdev->dev, "No REG resource for mode control!\n");
  return -ENXIO;
 }
 data->reg_mode_cntl = res->start;
 res = platform_get_resource(pdev, IORESOURCE_REG, 1);
 if (!res) {
  dev_err(&pdev->dev, "No REG resource for control!\n");
  return -ENXIO;
 }
 data->reg_cntl = res->start;

 data->chip = chip;
 data->current_brightness = 0;

 memset(&props, 0, sizeof(struct backlight_properties));
 props.type = BACKLIGHT_RAW;
 props.max_brightness = MAX_BRIGHTNESS;
 bl = devm_backlight_device_register(&pdev->dev, "max8925-backlight",
     &pdev->dev, data,
     &max8925_backlight_ops, &props);
 if (IS_ERR(bl)) {
  dev_err(&pdev->dev, "failed to register backlight\n");
  return PTR_ERR(bl);
 }
 bl->props.brightness = MAX_BRIGHTNESS;

 platform_set_drvdata(pdev, bl);

 value = 0;
 if (!pdev->dev.platform_data)
  max8925_backlight_dt_init(pdev);

 pdata = pdev->dev.platform_data;
 if (pdata) {
  if (pdata->lxw_scl)
   value |= (1 << 7);
  if (pdata->lxw_freq)
   value |= (LWX_FREQ(pdata->lxw_freq) << 4);
  if (pdata->dual_string)
   value |= (1 << 1);
 }
 ret = max8925_set_bits(chip->i2c, data->reg_mode_cntl, 0xfe, value);
 if (ret < 0)
  return ret;
 backlight_update_status(bl);
 return 0;
}
