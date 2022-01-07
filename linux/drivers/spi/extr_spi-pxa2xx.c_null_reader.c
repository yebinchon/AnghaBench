
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct driver_data {scalar_t__ n_bytes; scalar_t__ rx; scalar_t__ rx_end; } ;


 int SSDR ;
 int SSSR ;
 int SSSR_RNE ;
 int pxa2xx_spi_read (struct driver_data*,int ) ;

__attribute__((used)) static int null_reader(struct driver_data *drv_data)
{
 u8 n_bytes = drv_data->n_bytes;

 while ((pxa2xx_spi_read(drv_data, SSSR) & SSSR_RNE)
        && (drv_data->rx < drv_data->rx_end)) {
  pxa2xx_spi_read(drv_data, SSDR);
  drv_data->rx += n_bytes;
 }

 return drv_data->rx == drv_data->rx_end;
}
