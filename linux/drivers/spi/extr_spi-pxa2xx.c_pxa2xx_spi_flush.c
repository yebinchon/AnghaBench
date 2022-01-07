
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct driver_data {int dummy; } ;


 int SSDR ;
 int SSSR ;
 int SSSR_BSY ;
 int SSSR_RNE ;
 int SSSR_ROR ;
 int loops_per_jiffy ;
 int pxa2xx_spi_read (struct driver_data*,int ) ;
 int write_SSSR_CS (struct driver_data*,int ) ;

int pxa2xx_spi_flush(struct driver_data *drv_data)
{
 unsigned long limit = loops_per_jiffy << 1;

 do {
  while (pxa2xx_spi_read(drv_data, SSSR) & SSSR_RNE)
   pxa2xx_spi_read(drv_data, SSDR);
 } while ((pxa2xx_spi_read(drv_data, SSSR) & SSSR_BSY) && --limit);
 write_SSSR_CS(drv_data, SSSR_ROR);

 return limit;
}
