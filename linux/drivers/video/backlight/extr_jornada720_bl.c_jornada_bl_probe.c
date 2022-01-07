
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct backlight_properties {int max_brightness; int type; } ;
struct TYPE_2__ {int brightness; int power; } ;
struct backlight_device {TYPE_1__ props; } ;


 int BACKLIGHT_RAW ;
 int BL_DEF_BRIGHT ;
 int BL_MAX_BRIGHT ;
 int FB_BLANK_UNBLANK ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int PTR_ERR (struct backlight_device*) ;
 int S1D_DEVICENAME ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*) ;
 struct backlight_device* devm_backlight_device_register (int *,int ,int *,int *,int *,struct backlight_properties*) ;
 int jornada_bl_ops ;
 int jornada_bl_update_status (struct backlight_device*) ;
 int memset (struct backlight_properties*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct backlight_device*) ;

__attribute__((used)) static int jornada_bl_probe(struct platform_device *pdev)
{
 struct backlight_properties props;
 int ret;
 struct backlight_device *bd;

 memset(&props, 0, sizeof(struct backlight_properties));
 props.type = BACKLIGHT_RAW;
 props.max_brightness = BL_MAX_BRIGHT;

 bd = devm_backlight_device_register(&pdev->dev, S1D_DEVICENAME,
     &pdev->dev, ((void*)0), &jornada_bl_ops,
     &props);
 if (IS_ERR(bd)) {
  ret = PTR_ERR(bd);
  dev_err(&pdev->dev, "failed to register device, err=%x\n", ret);
  return ret;
 }

 bd->props.power = FB_BLANK_UNBLANK;
 bd->props.brightness = BL_DEF_BRIGHT;





 jornada_bl_update_status(bd);

 platform_set_drvdata(pdev, bd);
 dev_info(&pdev->dev, "HP Jornada 700 series backlight driver\n");

 return 0;
}
