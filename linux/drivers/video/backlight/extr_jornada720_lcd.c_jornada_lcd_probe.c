
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct lcd_device {int dummy; } ;


 int FB_BLANK_UNBLANK ;
 scalar_t__ IS_ERR (struct lcd_device*) ;
 int LCD_DEF_CONTRAST ;
 int PTR_ERR (struct lcd_device*) ;
 int S1D_DEVICENAME ;
 int dev_err (int *,char*) ;
 struct lcd_device* devm_lcd_device_register (int *,int ,int *,int *,int *) ;
 int jornada_lcd_props ;
 int jornada_lcd_set_contrast (struct lcd_device*,int ) ;
 int jornada_lcd_set_power (struct lcd_device*,int ) ;
 int msleep (int) ;
 int platform_set_drvdata (struct platform_device*,struct lcd_device*) ;

__attribute__((used)) static int jornada_lcd_probe(struct platform_device *pdev)
{
 struct lcd_device *lcd_device;
 int ret;

 lcd_device = devm_lcd_device_register(&pdev->dev, S1D_DEVICENAME,
     &pdev->dev, ((void*)0), &jornada_lcd_props);

 if (IS_ERR(lcd_device)) {
  ret = PTR_ERR(lcd_device);
  dev_err(&pdev->dev, "failed to register device\n");
  return ret;
 }

 platform_set_drvdata(pdev, lcd_device);


 jornada_lcd_set_contrast(lcd_device, LCD_DEF_CONTRAST);
 jornada_lcd_set_power(lcd_device, FB_BLANK_UNBLANK);

 msleep(100);

 return 0;
}
