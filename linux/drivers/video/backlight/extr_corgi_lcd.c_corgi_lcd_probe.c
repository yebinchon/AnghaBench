
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct spi_device {int dev; } ;
struct corgi_lcd_platform_data {int limit_mask; int kick_battery; int default_intensity; int max_intensity; int init_mode; } ;
struct corgi_lcd {int limit_mask; TYPE_2__* bl_dev; TYPE_2__* lcd_dev; int kick_battery; int mode; int power; struct spi_device* spi_dev; } ;
struct backlight_properties {int max_brightness; int type; } ;
struct TYPE_8__ {int power; int brightness; } ;
struct TYPE_9__ {TYPE_1__ props; } ;


 int BACKLIGHT_RAW ;
 int CORGI_LCD_MODE_VGA ;
 int EINVAL ;
 int ENOMEM ;
 int FB_BLANK_POWERDOWN ;
 int FB_BLANK_UNBLANK ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int PTR_ERR (TYPE_2__*) ;
 int backlight_update_status (TYPE_2__*) ;
 int corgi_bl_ops ;
 int corgi_lcd_ops ;
 int corgi_lcd_set_power (TYPE_2__*,int ) ;
 int dev_err (int *,char*) ;
 struct corgi_lcd_platform_data* dev_get_platdata (int *) ;
 TYPE_2__* devm_backlight_device_register (int *,char*,int *,struct corgi_lcd*,int *,struct backlight_properties*) ;
 struct corgi_lcd* devm_kzalloc (int *,int,int ) ;
 TYPE_2__* devm_lcd_device_register (int *,char*,int *,struct corgi_lcd*,int *) ;
 int memset (struct backlight_properties*,int ,int) ;
 int setup_gpio_backlight (struct corgi_lcd*,struct corgi_lcd_platform_data*) ;
 int spi_set_drvdata (struct spi_device*,struct corgi_lcd*) ;
 struct corgi_lcd* the_corgi_lcd ;

__attribute__((used)) static int corgi_lcd_probe(struct spi_device *spi)
{
 struct backlight_properties props;
 struct corgi_lcd_platform_data *pdata = dev_get_platdata(&spi->dev);
 struct corgi_lcd *lcd;
 int ret = 0;

 if (pdata == ((void*)0)) {
  dev_err(&spi->dev, "platform data not available\n");
  return -EINVAL;
 }

 lcd = devm_kzalloc(&spi->dev, sizeof(struct corgi_lcd), GFP_KERNEL);
 if (!lcd)
  return -ENOMEM;

 lcd->spi_dev = spi;

 lcd->lcd_dev = devm_lcd_device_register(&spi->dev, "corgi_lcd",
      &spi->dev, lcd, &corgi_lcd_ops);
 if (IS_ERR(lcd->lcd_dev))
  return PTR_ERR(lcd->lcd_dev);

 lcd->power = FB_BLANK_POWERDOWN;
 lcd->mode = (pdata) ? pdata->init_mode : CORGI_LCD_MODE_VGA;

 memset(&props, 0, sizeof(struct backlight_properties));
 props.type = BACKLIGHT_RAW;
 props.max_brightness = pdata->max_intensity;
 lcd->bl_dev = devm_backlight_device_register(&spi->dev, "corgi_bl",
      &spi->dev, lcd, &corgi_bl_ops,
      &props);
 if (IS_ERR(lcd->bl_dev))
  return PTR_ERR(lcd->bl_dev);

 lcd->bl_dev->props.brightness = pdata->default_intensity;
 lcd->bl_dev->props.power = FB_BLANK_UNBLANK;

 ret = setup_gpio_backlight(lcd, pdata);
 if (ret)
  return ret;

 lcd->kick_battery = pdata->kick_battery;

 spi_set_drvdata(spi, lcd);
 corgi_lcd_set_power(lcd->lcd_dev, FB_BLANK_UNBLANK);
 backlight_update_status(lcd->bl_dev);

 lcd->limit_mask = pdata->limit_mask;
 the_corgi_lcd = lcd;
 return 0;
}
