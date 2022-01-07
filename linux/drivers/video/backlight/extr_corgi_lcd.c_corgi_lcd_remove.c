
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {int dummy; } ;
struct corgi_lcd {int lcd_dev; TYPE_2__* bl_dev; } ;
struct TYPE_3__ {scalar_t__ brightness; int power; } ;
struct TYPE_4__ {TYPE_1__ props; } ;


 int FB_BLANK_POWERDOWN ;
 int FB_BLANK_UNBLANK ;
 int backlight_update_status (TYPE_2__*) ;
 int corgi_lcd_set_power (int ,int ) ;
 struct corgi_lcd* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int corgi_lcd_remove(struct spi_device *spi)
{
 struct corgi_lcd *lcd = spi_get_drvdata(spi);

 lcd->bl_dev->props.power = FB_BLANK_UNBLANK;
 lcd->bl_dev->props.brightness = 0;
 backlight_update_status(lcd->bl_dev);
 corgi_lcd_set_power(lcd->lcd_dev, FB_BLANK_POWERDOWN);
 return 0;
}
