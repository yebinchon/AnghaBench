
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {int bits_per_word; int dev; } ;
struct TYPE_3__ {int brightness; } ;
struct lcd_device {TYPE_1__ props; } ;
struct backlight_properties {int max_brightness; int type; } ;
struct backlight_device {TYPE_1__ props; } ;
struct ams369fg06 {int power; TYPE_2__* lcd_pd; struct lcd_device* bd; struct lcd_device* ld; int * dev; struct spi_device* spi; } ;
struct TYPE_4__ {int lcd_enabled; } ;


 int BACKLIGHT_RAW ;
 int DEFAULT_BRIGHTNESS ;
 int EINVAL ;
 int ENOMEM ;
 int FB_BLANK_POWERDOWN ;
 int FB_BLANK_UNBLANK ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct lcd_device*) ;
 int MAX_BRIGHTNESS ;
 int PTR_ERR (struct lcd_device*) ;
 int ams369fg06_backlight_ops ;
 int ams369fg06_lcd_ops ;
 int ams369fg06_power (struct ams369fg06*,int ) ;
 int dev_err (int *,char*) ;
 TYPE_2__* dev_get_platdata (int *) ;
 int dev_info (int *,char*) ;
 struct lcd_device* devm_backlight_device_register (int *,char*,int *,struct ams369fg06*,int *,struct backlight_properties*) ;
 struct ams369fg06* devm_kzalloc (int *,int,int ) ;
 struct lcd_device* devm_lcd_device_register (int *,char*,int *,struct ams369fg06*,int *) ;
 int memset (struct backlight_properties*,int ,int) ;
 int spi_set_drvdata (struct spi_device*,struct ams369fg06*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int ams369fg06_probe(struct spi_device *spi)
{
 int ret = 0;
 struct ams369fg06 *lcd = ((void*)0);
 struct lcd_device *ld = ((void*)0);
 struct backlight_device *bd = ((void*)0);
 struct backlight_properties props;

 lcd = devm_kzalloc(&spi->dev, sizeof(struct ams369fg06), GFP_KERNEL);
 if (!lcd)
  return -ENOMEM;


 spi->bits_per_word = 16;

 ret = spi_setup(spi);
 if (ret < 0) {
  dev_err(&spi->dev, "spi setup failed.\n");
  return ret;
 }

 lcd->spi = spi;
 lcd->dev = &spi->dev;

 lcd->lcd_pd = dev_get_platdata(&spi->dev);
 if (!lcd->lcd_pd) {
  dev_err(&spi->dev, "platform data is NULL\n");
  return -EINVAL;
 }

 ld = devm_lcd_device_register(&spi->dev, "ams369fg06", &spi->dev, lcd,
     &ams369fg06_lcd_ops);
 if (IS_ERR(ld))
  return PTR_ERR(ld);

 lcd->ld = ld;

 memset(&props, 0, sizeof(struct backlight_properties));
 props.type = BACKLIGHT_RAW;
 props.max_brightness = MAX_BRIGHTNESS;

 bd = devm_backlight_device_register(&spi->dev, "ams369fg06-bl",
     &spi->dev, lcd,
     &ams369fg06_backlight_ops, &props);
 if (IS_ERR(bd))
  return PTR_ERR(bd);

 bd->props.brightness = DEFAULT_BRIGHTNESS;
 lcd->bd = bd;

 if (!lcd->lcd_pd->lcd_enabled) {





  lcd->power = FB_BLANK_POWERDOWN;

  ams369fg06_power(lcd, FB_BLANK_UNBLANK);
 } else {
  lcd->power = FB_BLANK_UNBLANK;
 }

 spi_set_drvdata(spi, lcd);

 dev_info(&spi->dev, "ams369fg06 panel driver has been probed.\n");

 return 0;
}
