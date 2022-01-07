
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct driver_data {scalar_t__ ssp_type; } ;


 scalar_t__ CE4100_SSP ;
 scalar_t__ QUARK_X1000_SSP ;
 int SSSR ;
 int SSSR_ALT_FRM_MASK ;
 int pxa2xx_spi_read (struct driver_data*,int ) ;
 int pxa2xx_spi_write (struct driver_data*,int ,int) ;

__attribute__((used)) static inline void write_SSSR_CS(struct driver_data *drv_data, u32 val)
{
 if (drv_data->ssp_type == CE4100_SSP ||
     drv_data->ssp_type == QUARK_X1000_SSP)
  val |= pxa2xx_spi_read(drv_data, SSSR) & SSSR_ALT_FRM_MASK;

 pxa2xx_spi_write(drv_data, SSSR, val);
}
