
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct l4f00242t03_priv {int ld; } ;


 int FB_BLANK_POWERDOWN ;
 int l4f00242t03_lcd_power_set (int ,int ) ;
 struct l4f00242t03_priv* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int l4f00242t03_remove(struct spi_device *spi)
{
 struct l4f00242t03_priv *priv = spi_get_drvdata(spi);

 l4f00242t03_lcd_power_set(priv->ld, FB_BLANK_POWERDOWN);
 return 0;
}
