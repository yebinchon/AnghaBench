
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct driver_data {int controller; int clear_sr; } ;


 int SSTO ;
 int pxa25x_ssp_comp (struct driver_data*) ;
 int pxa2xx_spi_write (struct driver_data*,int ,int ) ;
 int reset_sccr1 (struct driver_data*) ;
 int spi_finalize_current_transfer (int ) ;
 int write_SSSR_CS (struct driver_data*,int ) ;

__attribute__((used)) static void int_transfer_complete(struct driver_data *drv_data)
{

 write_SSSR_CS(drv_data, drv_data->clear_sr);
 reset_sccr1(drv_data);
 if (!pxa25x_ssp_comp(drv_data))
  pxa2xx_spi_write(drv_data, SSTO, 0);

 spi_finalize_current_transfer(drv_data->controller);
}
