
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tosa_bl_data {TYPE_1__* i2c; int comadj; } ;
struct spi_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int DAC_CH1 ;
 int DAC_CH2 ;
 int TOSA_GPIO_BL_C20MA ;
 struct spi_device* dev_get_platdata (int *) ;
 int gpio_set_value (int ,int) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int ) ;
 int tosa_bl_enable (struct spi_device*,int) ;

__attribute__((used)) static void tosa_bl_set_backlight(struct tosa_bl_data *data, int brightness)
{
 struct spi_device *spi = dev_get_platdata(&data->i2c->dev);

 i2c_smbus_write_byte_data(data->i2c, DAC_CH1, data->comadj);


 i2c_smbus_write_byte_data(data->i2c, DAC_CH2, (u8)(brightness & 0xff));


 gpio_set_value(TOSA_GPIO_BL_C20MA, brightness & 0x100);

 tosa_bl_enable(spi, brightness);
}
