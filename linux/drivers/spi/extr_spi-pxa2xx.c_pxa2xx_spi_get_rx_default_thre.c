
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct driver_data {int ssp_type; } ;




 int RX_THRESH_CE4100_DFLT ;
 int RX_THRESH_DFLT ;
 int RX_THRESH_QUARK_X1000_DFLT ;

__attribute__((used)) static u32
pxa2xx_spi_get_rx_default_thre(const struct driver_data *drv_data)
{
 switch (drv_data->ssp_type) {
 case 128:
  return RX_THRESH_QUARK_X1000_DFLT;
 case 129:
  return RX_THRESH_CE4100_DFLT;
 default:
  return RX_THRESH_DFLT;
 }
}
