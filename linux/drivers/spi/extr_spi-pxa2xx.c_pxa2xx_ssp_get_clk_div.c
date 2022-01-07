
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct driver_data {int ssp_type; TYPE_2__* controller; } ;
struct chip_data {int dds_rate; } ;
struct TYPE_4__ {TYPE_1__* cur_msg; } ;
struct TYPE_3__ {int spi; } ;



 unsigned int quark_x1000_get_clk_div (int,int *) ;
 struct chip_data* spi_get_ctldata (int ) ;
 unsigned int ssp_get_clk_div (struct driver_data*,int) ;

__attribute__((used)) static unsigned int pxa2xx_ssp_get_clk_div(struct driver_data *drv_data,
        int rate)
{
 struct chip_data *chip =
  spi_get_ctldata(drv_data->controller->cur_msg->spi);
 unsigned int clk_div;

 switch (drv_data->ssp_type) {
 case 128:
  clk_div = quark_x1000_get_clk_div(rate, &chip->dds_rate);
  break;
 default:
  clk_div = ssp_get_clk_div(drv_data, rate);
  break;
 }
 return clk_div << 8;
}
