
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct driver_data {int ssp_type; } ;


 int CE4100_SSCR1_RFT ;

 int QUARK_X1000_SSCR1_RFT ;

 int SSCR1_RFT ;

__attribute__((used)) static void pxa2xx_spi_clear_rx_thre(const struct driver_data *drv_data,
         u32 *sccr1_reg)
{
 u32 mask;

 switch (drv_data->ssp_type) {
 case 128:
  mask = QUARK_X1000_SSCR1_RFT;
  break;
 case 129:
  mask = CE4100_SSCR1_RFT;
  break;
 default:
  mask = SSCR1_RFT;
  break;
 }
 *sccr1_reg &= ~mask;
}
