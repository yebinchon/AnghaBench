
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct omap_backlight_config {int default_intensity; } ;
struct omap_backlight {int * dev; struct omap_backlight_config* pdata; scalar_t__ current_intensity; int powermode; } ;
struct backlight_properties {int max_brightness; int type; } ;
struct TYPE_2__ {int brightness; int fb_blank; } ;
struct backlight_device {TYPE_1__ props; } ;


 int BACKLIGHT_RAW ;
 int ENOMEM ;
 int ENXIO ;
 int FB_BLANK_POWERDOWN ;
 int FB_BLANK_UNBLANK ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int OMAPBL_MAX_INTENSITY ;
 int PTR_ERR (struct backlight_device*) ;
 int PWL ;
 struct omap_backlight_config* dev_get_platdata (int *) ;
 int dev_info (int *,char*) ;
 struct backlight_device* devm_backlight_device_register (int *,char*,int *,struct omap_backlight*,int *,struct backlight_properties*) ;
 struct omap_backlight* devm_kzalloc (int *,int,int ) ;
 int memset (struct backlight_properties*,int ,int) ;
 int omap_cfg_reg (int ) ;
 int omapbl_ops ;
 int omapbl_update_status (struct backlight_device*) ;
 int platform_set_drvdata (struct platform_device*,struct backlight_device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int omapbl_probe(struct platform_device *pdev)
{
 struct backlight_properties props;
 struct backlight_device *dev;
 struct omap_backlight *bl;
 struct omap_backlight_config *pdata = dev_get_platdata(&pdev->dev);

 if (!pdata)
  return -ENXIO;

 bl = devm_kzalloc(&pdev->dev, sizeof(struct omap_backlight),
     GFP_KERNEL);
 if (unlikely(!bl))
  return -ENOMEM;

 memset(&props, 0, sizeof(struct backlight_properties));
 props.type = BACKLIGHT_RAW;
 props.max_brightness = OMAPBL_MAX_INTENSITY;
 dev = devm_backlight_device_register(&pdev->dev, "omap-bl", &pdev->dev,
     bl, &omapbl_ops, &props);
 if (IS_ERR(dev))
  return PTR_ERR(dev);

 bl->powermode = FB_BLANK_POWERDOWN;
 bl->current_intensity = 0;

 bl->pdata = pdata;
 bl->dev = &pdev->dev;

 platform_set_drvdata(pdev, dev);

 omap_cfg_reg(PWL);

 dev->props.fb_blank = FB_BLANK_UNBLANK;
 dev->props.brightness = pdata->default_intensity;
 omapbl_update_status(dev);

 dev_info(&pdev->dev, "OMAP LCD backlight initialised\n");

 return 0;
}
