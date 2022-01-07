
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct driver_data {scalar_t__ tx; scalar_t__ tx_end; } ;


 int SSDR ;
 scalar_t__ pxa2xx_spi_txfifo_full (struct driver_data*) ;
 int pxa2xx_spi_write (struct driver_data*,int ,int ) ;

__attribute__((used)) static int u8_writer(struct driver_data *drv_data)
{
 if (pxa2xx_spi_txfifo_full(drv_data)
  || (drv_data->tx == drv_data->tx_end))
  return 0;

 pxa2xx_spi_write(drv_data, SSDR, *(u8 *)(drv_data->tx));
 ++drv_data->tx;

 return 1;
}
