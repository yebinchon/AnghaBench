
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct l4f00242t03_priv {int core_reg; int io_reg; } ;
struct l4f00242t03_pdata {int data_enable_gpio; } ;


 int dev_dbg (int *,char*) ;
 struct l4f00242t03_pdata* dev_get_platdata (int *) ;
 int gpio_set_value (int ,int ) ;
 int regulator_disable (int ) ;
 struct l4f00242t03_priv* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static void l4f00242t03_lcd_powerdown(struct spi_device *spi)
{
 struct l4f00242t03_pdata *pdata = dev_get_platdata(&spi->dev);
 struct l4f00242t03_priv *priv = spi_get_drvdata(spi);

 dev_dbg(&spi->dev, "Powering down LCD\n");

 gpio_set_value(pdata->data_enable_gpio, 0);

 regulator_disable(priv->io_reg);
 regulator_disable(priv->core_reg);
}
