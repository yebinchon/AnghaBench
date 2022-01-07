
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int brightness; } ;
struct tps65217_bl_pdata {int dft_brightness; TYPE_1__ props; } ;
struct tps65217_bl {int is_enabled; struct tps65217_bl_pdata* bl; TYPE_2__* dev; struct tps65217* tps; } ;
struct tps65217 {int dummy; } ;
struct TYPE_7__ {int parent; } ;
struct platform_device {int name; TYPE_2__ dev; } ;
struct backlight_properties {int max_brightness; int type; } ;


 int BACKLIGHT_RAW ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct tps65217_bl_pdata*) ;
 int PTR_ERR (struct tps65217_bl_pdata*) ;
 int backlight_update_status (struct tps65217_bl_pdata*) ;
 int dev_err (TYPE_2__*,char*,int) ;
 struct tps65217* dev_get_drvdata (int ) ;
 struct tps65217_bl_pdata* devm_backlight_device_register (TYPE_2__*,int ,TYPE_2__*,struct tps65217_bl*,int *,struct backlight_properties*) ;
 struct tps65217_bl* devm_kzalloc (TYPE_2__*,int,int ) ;
 int memset (struct backlight_properties*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct tps65217_bl*) ;
 int tps65217_bl_hw_init (struct tps65217_bl*,struct tps65217_bl_pdata*) ;
 int tps65217_bl_ops ;
 struct tps65217_bl_pdata* tps65217_bl_parse_dt (struct platform_device*) ;

__attribute__((used)) static int tps65217_bl_probe(struct platform_device *pdev)
{
 int rc;
 struct tps65217 *tps = dev_get_drvdata(pdev->dev.parent);
 struct tps65217_bl *tps65217_bl;
 struct tps65217_bl_pdata *pdata;
 struct backlight_properties bl_props;

 pdata = tps65217_bl_parse_dt(pdev);
 if (IS_ERR(pdata))
  return PTR_ERR(pdata);

 tps65217_bl = devm_kzalloc(&pdev->dev, sizeof(*tps65217_bl),
    GFP_KERNEL);
 if (tps65217_bl == ((void*)0))
  return -ENOMEM;

 tps65217_bl->tps = tps;
 tps65217_bl->dev = &pdev->dev;
 tps65217_bl->is_enabled = 0;

 rc = tps65217_bl_hw_init(tps65217_bl, pdata);
 if (rc)
  return rc;

 memset(&bl_props, 0, sizeof(struct backlight_properties));
 bl_props.type = BACKLIGHT_RAW;
 bl_props.max_brightness = 100;

 tps65217_bl->bl = devm_backlight_device_register(&pdev->dev, pdev->name,
      tps65217_bl->dev, tps65217_bl,
      &tps65217_bl_ops, &bl_props);
 if (IS_ERR(tps65217_bl->bl)) {
  dev_err(tps65217_bl->dev,
   "registration of backlight device failed: %d\n", rc);
  return PTR_ERR(tps65217_bl->bl);
 }

 tps65217_bl->bl->props.brightness = pdata->dft_brightness;
 backlight_update_status(tps65217_bl->bl);
 platform_set_drvdata(pdev, tps65217_bl);

 return 0;
}
