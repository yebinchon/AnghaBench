
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct driver_data {int ssp_type; } ;



 int CE4100_SSSR_TFL_MASK ;

 int QUARK_X1000_SSSR_TFL_MASK ;
 int SSSR ;
 int SSSR_TFL_MASK ;
 int pxa2xx_spi_read (struct driver_data const*,int ) ;

__attribute__((used)) static bool pxa2xx_spi_txfifo_full(const struct driver_data *drv_data)
{
 u32 mask;

 switch (drv_data->ssp_type) {
 case 128:
  mask = QUARK_X1000_SSSR_TFL_MASK;
  break;
 case 129:
  mask = CE4100_SSSR_TFL_MASK;
  break;
 default:
  mask = SSSR_TFL_MASK;
  break;
 }

 return (pxa2xx_spi_read(drv_data, SSSR) & mask) == mask;
}
