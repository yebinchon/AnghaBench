
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct spi_device {int dev; } ;
struct l4f00242t03_priv {int io_reg; int core_reg; } ;
struct l4f00242t03_pdata {int data_enable_gpio; int reset_gpio; } ;


 int ARRAY_SIZE (int const*) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 struct l4f00242t03_pdata* dev_get_platdata (int *) ;
 int gpio_set_value (int ,int) ;
 int l4f00242t03_reset (int ) ;
 int msleep (int) ;
 int param (int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int regulator_set_voltage (int ,int,int) ;
 struct l4f00242t03_priv* spi_get_drvdata (struct spi_device*) ;
 int spi_write (struct spi_device*,int const*,int) ;

__attribute__((used)) static void l4f00242t03_lcd_init(struct spi_device *spi)
{
 struct l4f00242t03_pdata *pdata = dev_get_platdata(&spi->dev);
 struct l4f00242t03_priv *priv = spi_get_drvdata(spi);
 const u16 cmd[] = { 0x36, param(0), 0x3A, param(0x60) };
 int ret;

 dev_dbg(&spi->dev, "initializing LCD\n");

 ret = regulator_set_voltage(priv->io_reg, 1800000, 1800000);
 if (ret) {
  dev_err(&spi->dev, "failed to set the IO regulator voltage.\n");
  return;
 }
 ret = regulator_enable(priv->io_reg);
 if (ret) {
  dev_err(&spi->dev, "failed to enable the IO regulator.\n");
  return;
 }

 ret = regulator_set_voltage(priv->core_reg, 2800000, 2800000);
 if (ret) {
  dev_err(&spi->dev, "failed to set the core regulator voltage.\n");
  regulator_disable(priv->io_reg);
  return;
 }
 ret = regulator_enable(priv->core_reg);
 if (ret) {
  dev_err(&spi->dev, "failed to enable the core regulator.\n");
  regulator_disable(priv->io_reg);
  return;
 }

 l4f00242t03_reset(pdata->reset_gpio);

 gpio_set_value(pdata->data_enable_gpio, 1);
 msleep(60);
 spi_write(spi, (const u8 *)cmd, ARRAY_SIZE(cmd) * sizeof(u16));
}
