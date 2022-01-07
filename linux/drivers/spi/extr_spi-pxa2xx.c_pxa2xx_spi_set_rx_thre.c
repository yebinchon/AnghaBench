
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct driver_data {int ssp_type; } ;


 int CE4100_SSCR1_RxTresh (int ) ;

 int QUARK_X1000_SSCR1_RxTresh (int ) ;

 int SSCR1_RxTresh (int ) ;

__attribute__((used)) static void pxa2xx_spi_set_rx_thre(const struct driver_data *drv_data,
       u32 *sccr1_reg, u32 threshold)
{
 switch (drv_data->ssp_type) {
 case 128:
  *sccr1_reg |= QUARK_X1000_SSCR1_RxTresh(threshold);
  break;
 case 129:
  *sccr1_reg |= CE4100_SSCR1_RxTresh(threshold);
  break;
 default:
  *sccr1_reg |= SSCR1_RxTresh(threshold);
  break;
 }
}
