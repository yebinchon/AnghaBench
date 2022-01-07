
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct spi_device {int dev; int mode; int max_speed_hz; } ;
struct lcd_device {int dummy; } ;
struct ili922x {struct lcd_device* ld; int power; struct spi_device* spi; } ;


 int ENODEV ;
 int ENOMEM ;
 int FB_BLANK_POWERDOWN ;
 int FB_BLANK_UNBLANK ;
 int GFP_KERNEL ;
 int ILITEK_DEVICE_ID ;
 int ILITEK_DEVICE_ID_MASK ;
 scalar_t__ IS_ERR (struct lcd_device*) ;
 int PTR_ERR (struct lcd_device*) ;
 int REG_DRIVER_CODE_READ ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int,int ,int ) ;
 struct ili922x* devm_kzalloc (int *,int,int ) ;
 struct lcd_device* devm_lcd_device_register (int *,char*,int *,struct ili922x*,int *) ;
 int ili922x_display_init (struct spi_device*) ;
 int ili922x_lcd_power (struct ili922x*,int ) ;
 int ili922x_ops ;
 int ili922x_read (struct spi_device*,int ,int*) ;
 int ili922x_read_status (struct spi_device*,int*) ;
 int spi_set_drvdata (struct spi_device*,struct ili922x*) ;

__attribute__((used)) static int ili922x_probe(struct spi_device *spi)
{
 struct ili922x *ili;
 struct lcd_device *lcd;
 int ret;
 u16 reg = 0;

 ili = devm_kzalloc(&spi->dev, sizeof(*ili), GFP_KERNEL);
 if (!ili)
  return -ENOMEM;

 ili->spi = spi;
 spi_set_drvdata(spi, ili);


 ret = ili922x_read(spi, REG_DRIVER_CODE_READ, &reg);
 if (ret || ((reg & ILITEK_DEVICE_ID_MASK) != ILITEK_DEVICE_ID)) {
  dev_err(&spi->dev,
   "no LCD found: Chip ID 0x%x, ret %d\n",
   reg, ret);
  return -ENODEV;
 }

 dev_info(&spi->dev, "ILI%x found, SPI freq %d, mode %d\n",
   reg, spi->max_speed_hz, spi->mode);

 ret = ili922x_read_status(spi, &reg);
 if (ret) {
  dev_err(&spi->dev, "reading RS failed...\n");
  return ret;
 }

 dev_dbg(&spi->dev, "status: 0x%x\n", reg);

 ili922x_display_init(spi);

 ili->power = FB_BLANK_POWERDOWN;

 lcd = devm_lcd_device_register(&spi->dev, "ili922xlcd", &spi->dev, ili,
     &ili922x_ops);
 if (IS_ERR(lcd)) {
  dev_err(&spi->dev, "cannot register LCD\n");
  return PTR_ERR(lcd);
 }

 ili->ld = lcd;
 spi_set_drvdata(spi, ili);

 ili922x_lcd_power(ili, FB_BLANK_UNBLANK);

 return 0;
}
