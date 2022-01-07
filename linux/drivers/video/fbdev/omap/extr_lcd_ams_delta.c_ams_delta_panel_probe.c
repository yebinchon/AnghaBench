
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {int max_contrast; } ;
struct lcd_device {TYPE_1__ props; } ;


 int AMS_DELTA_DEFAULT_CONTRAST ;
 int AMS_DELTA_MAX_CONTRAST ;
 int FB_BLANK_UNBLANK ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (struct lcd_device*) ;
 int PTR_ERR (struct lcd_device*) ;
 int ams_delta_lcd_ops ;
 int ams_delta_lcd_set_contrast (struct lcd_device*,int ) ;
 int ams_delta_lcd_set_power (struct lcd_device*,int ) ;
 int ams_delta_panel ;
 int dev_err (int *,char*,...) ;
 struct lcd_device* devm_gpiod_get (int *,char*,int ) ;
 struct lcd_device* gpiod_ndisp ;
 struct lcd_device* gpiod_vblen ;
 struct lcd_device* lcd_device_register (char*,int *,int *,int *) ;
 int omapfb_register_panel (int *) ;
 int platform_set_drvdata (struct platform_device*,struct lcd_device*) ;

__attribute__((used)) static int ams_delta_panel_probe(struct platform_device *pdev)
{
 struct lcd_device *lcd_device = ((void*)0);
 int ret;

 gpiod_vblen = devm_gpiod_get(&pdev->dev, "vblen", GPIOD_OUT_LOW);
 if (IS_ERR(gpiod_vblen)) {
  ret = PTR_ERR(gpiod_vblen);
  dev_err(&pdev->dev, "VBLEN GPIO request failed (%d)\n", ret);
  return ret;
 }

 gpiod_ndisp = devm_gpiod_get(&pdev->dev, "ndisp", GPIOD_OUT_LOW);
 if (IS_ERR(gpiod_ndisp)) {
  ret = PTR_ERR(gpiod_ndisp);
  dev_err(&pdev->dev, "NDISP GPIO request failed (%d)\n", ret);
  return ret;
 }
 ams_delta_lcd_set_contrast(lcd_device, AMS_DELTA_DEFAULT_CONTRAST);
 ams_delta_lcd_set_power(lcd_device, FB_BLANK_UNBLANK);

 omapfb_register_panel(&ams_delta_panel);
 return 0;
}
