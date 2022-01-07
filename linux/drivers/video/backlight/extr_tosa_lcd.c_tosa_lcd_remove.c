
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tosa_lcd_data {int i2c; } ;
struct spi_device {int dummy; } ;


 int i2c_unregister_device (int ) ;
 struct tosa_lcd_data* spi_get_drvdata (struct spi_device*) ;
 int tosa_lcd_tg_off (struct tosa_lcd_data*) ;

__attribute__((used)) static int tosa_lcd_remove(struct spi_device *spi)
{
 struct tosa_lcd_data *data = spi_get_drvdata(spi);

 i2c_unregister_device(data->i2c);

 tosa_lcd_tg_off(data);

 return 0;
}
