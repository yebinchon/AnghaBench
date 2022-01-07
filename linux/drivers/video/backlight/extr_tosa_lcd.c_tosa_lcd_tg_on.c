
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tosa_lcd_data {int i2c; struct spi_device* spi; scalar_t__ is_vga; } ;
struct spi_device {int dummy; } ;
struct i2c_board_info {char* type; struct spi_device* platform_data; int addr; } ;
struct i2c_adapter {int dummy; } ;


 int DAC_BASE ;
 int TG_PINICTL ;
 int TG_PNLCTL ;
 int TG_REG0_COLOR ;
 int TG_REG0_LR ;
 int TG_REG0_UD ;
 int TG_REG0_VQV ;
 struct i2c_adapter* i2c_get_adapter (int ) ;
 int i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;
 int mdelay (int) ;
 int tosa_tg_send (struct spi_device*,int ,int) ;

__attribute__((used)) static void tosa_lcd_tg_on(struct tosa_lcd_data *data)
{
 struct spi_device *spi = data->spi;
 int value = TG_REG0_COLOR | TG_REG0_UD | TG_REG0_LR;

 if (data->is_vga)
  value |= TG_REG0_VQV;

 tosa_tg_send(spi, TG_PNLCTL, value);


 tosa_tg_send(spi, TG_PINICTL, 0x4);
 mdelay(50);


 tosa_tg_send(spi, TG_PINICTL, 0x0);

 if (!data->i2c) {




  struct i2c_adapter *adap = i2c_get_adapter(0);
  struct i2c_board_info info = {
   .type = "tosa-bl",
   .addr = DAC_BASE,
   .platform_data = data->spi,
  };
  data->i2c = i2c_new_device(adap, &info);
 }
}
