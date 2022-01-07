
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct driver_data {int int_cr1; int ssp_type; TYPE_2__* controller; } ;
struct chip_data {int threshold; } ;
struct TYPE_4__ {TYPE_1__* cur_msg; } ;
struct TYPE_3__ {int spi; } ;


 int CE4100_SSCR1_RFT ;

 int QUARK_X1000_SSCR1_RFT ;

 int SSCR1 ;
 int SSCR1_RFT ;
 int pxa2xx_spi_read (struct driver_data*,int ) ;
 int pxa2xx_spi_write (struct driver_data*,int ,int) ;
 struct chip_data* spi_get_ctldata (int ) ;

__attribute__((used)) static void reset_sccr1(struct driver_data *drv_data)
{
 struct chip_data *chip =
  spi_get_ctldata(drv_data->controller->cur_msg->spi);
 u32 sccr1_reg;

 sccr1_reg = pxa2xx_spi_read(drv_data, SSCR1) & ~drv_data->int_cr1;
 switch (drv_data->ssp_type) {
 case 128:
  sccr1_reg &= ~QUARK_X1000_SSCR1_RFT;
  break;
 case 129:
  sccr1_reg &= ~CE4100_SSCR1_RFT;
  break;
 default:
  sccr1_reg &= ~SSCR1_RFT;
  break;
 }
 sccr1_reg |= chip->threshold;
 pxa2xx_spi_write(drv_data, SSCR1, sccr1_reg);
}
