
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int bits_per_word; int dev; } ;
struct lms501kf03 {int power; TYPE_1__* lcd_pd; struct lcd_device* ld; int * dev; struct spi_device* spi; } ;
struct lcd_device {int dummy; } ;
struct TYPE_2__ {int lcd_enabled; } ;


 int EINVAL ;
 int ENOMEM ;
 int FB_BLANK_POWERDOWN ;
 int FB_BLANK_UNBLANK ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct lcd_device*) ;
 int PTR_ERR (struct lcd_device*) ;
 int dev_err (int *,char*) ;
 TYPE_1__* dev_get_platdata (int *) ;
 int dev_info (int *,char*) ;
 struct lms501kf03* devm_kzalloc (int *,int,int ) ;
 struct lcd_device* devm_lcd_device_register (int *,char*,int *,struct lms501kf03*,int *) ;
 int lms501kf03_lcd_ops ;
 int lms501kf03_power (struct lms501kf03*,int ) ;
 int spi_set_drvdata (struct spi_device*,struct lms501kf03*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int lms501kf03_probe(struct spi_device *spi)
{
 struct lms501kf03 *lcd = ((void*)0);
 struct lcd_device *ld = ((void*)0);
 int ret = 0;

 lcd = devm_kzalloc(&spi->dev, sizeof(struct lms501kf03), GFP_KERNEL);
 if (!lcd)
  return -ENOMEM;


 spi->bits_per_word = 9;

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

 ld = devm_lcd_device_register(&spi->dev, "lms501kf03", &spi->dev, lcd,
     &lms501kf03_lcd_ops);
 if (IS_ERR(ld))
  return PTR_ERR(ld);

 lcd->ld = ld;

 if (!lcd->lcd_pd->lcd_enabled) {





  lcd->power = FB_BLANK_POWERDOWN;

  lms501kf03_power(lcd, FB_BLANK_UNBLANK);
 } else {
  lcd->power = FB_BLANK_UNBLANK;
 }

 spi_set_drvdata(spi, lcd);

 dev_info(&spi->dev, "lms501kf03 panel driver has been probed.\n");

 return 0;
}
