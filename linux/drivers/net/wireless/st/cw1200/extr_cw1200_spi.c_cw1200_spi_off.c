
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_platform_data_spi {int (* clk_ctrl ) (struct cw1200_platform_data_spi const*,int) ;int (* power_ctrl ) (struct cw1200_platform_data_spi const*,int) ;scalar_t__ reset; } ;


 int gpio_free (scalar_t__) ;
 int gpio_set_value (scalar_t__,int ) ;
 int msleep (int) ;
 int stub1 (struct cw1200_platform_data_spi const*,int) ;
 int stub2 (struct cw1200_platform_data_spi const*,int) ;

__attribute__((used)) static int cw1200_spi_off(const struct cw1200_platform_data_spi *pdata)
{
 if (pdata->reset) {
  gpio_set_value(pdata->reset, 0);
  msleep(30);
  gpio_free(pdata->reset);
 }

 if (pdata->power_ctrl)
  pdata->power_ctrl(pdata, 0);
 if (pdata->clk_ctrl)
  pdata->clk_ctrl(pdata, 0);

 return 0;
}
