
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct driver_data {int ssp_type; } ;


 int CE4100_SSCR1_CHANGE_MASK ;

 int QUARK_X1000_SSCR1_CHANGE_MASK ;

 int SSCR1_CHANGE_MASK ;

__attribute__((used)) static u32 pxa2xx_spi_get_ssrc1_change_mask(const struct driver_data *drv_data)
{
 switch (drv_data->ssp_type) {
 case 128:
  return QUARK_X1000_SSCR1_CHANGE_MASK;
 case 129:
  return CE4100_SSCR1_CHANGE_MASK;
 default:
  return SSCR1_CHANGE_MASK;
 }
}
