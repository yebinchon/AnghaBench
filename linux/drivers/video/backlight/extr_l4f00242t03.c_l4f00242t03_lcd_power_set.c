
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct spi_device {int dev; } ;
struct lcd_device {int dummy; } ;
struct l4f00242t03_priv {int lcd_state; struct lcd_device* ld; struct spi_device* spi; } ;


 int FB_BLANK_NORMAL ;
 int FB_BLANK_POWERDOWN ;
 int FB_BLANK_UNBLANK ;
 int FB_BLANK_VSYNC_SUSPEND ;
 int dev_dbg (int *,char*) ;
 int l4f00242t03_lcd_init (struct spi_device*) ;
 int l4f00242t03_lcd_powerdown (struct spi_device*) ;
 struct l4f00242t03_priv* lcd_get_data (struct lcd_device*) ;
 int msleep (int) ;
 int spi_write (struct spi_device*,int const*,int) ;

__attribute__((used)) static int l4f00242t03_lcd_power_set(struct lcd_device *ld, int power)
{
 struct l4f00242t03_priv *priv = lcd_get_data(ld);
 struct spi_device *spi = priv->spi;

 const u16 slpout = 0x11;
 const u16 dison = 0x29;

 const u16 slpin = 0x10;
 const u16 disoff = 0x28;

 if (power <= FB_BLANK_NORMAL) {
  if (priv->lcd_state <= FB_BLANK_NORMAL) {

  } else if (priv->lcd_state < FB_BLANK_POWERDOWN) {
   dev_dbg(&spi->dev, "Resuming LCD\n");

   spi_write(spi, (const u8 *)&slpout, sizeof(u16));
   msleep(60);
   spi_write(spi, (const u8 *)&dison, sizeof(u16));
  } else {

   l4f00242t03_lcd_init(spi);
   priv->lcd_state = FB_BLANK_VSYNC_SUSPEND;
   l4f00242t03_lcd_power_set(priv->ld, power);
  }
 } else if (power < FB_BLANK_POWERDOWN) {
  if (priv->lcd_state <= FB_BLANK_NORMAL) {

   dev_dbg(&spi->dev, "Standby the LCD\n");

   spi_write(spi, (const u8 *)&disoff, sizeof(u16));
   msleep(60);
   spi_write(spi, (const u8 *)&slpin, sizeof(u16));
  } else if (priv->lcd_state < FB_BLANK_POWERDOWN) {

  } else {

   l4f00242t03_lcd_init(spi);
   priv->lcd_state = FB_BLANK_UNBLANK;
   l4f00242t03_lcd_power_set(ld, power);
  }
 } else {

  if (priv->lcd_state != FB_BLANK_POWERDOWN) {

   spi_write(spi, (const u8 *)&disoff, sizeof(u16));
   msleep(60);
   l4f00242t03_lcd_powerdown(spi);
  }
 }

 priv->lcd_state = power;

 return 0;
}
