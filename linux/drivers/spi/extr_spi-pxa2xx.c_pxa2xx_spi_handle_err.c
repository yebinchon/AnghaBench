
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int dummy; } ;
struct spi_controller {int dummy; } ;
struct driver_data {int int_cr1; int dma_cr1; int dma_running; int clear_sr; } ;


 int SSCR0 ;
 int SSCR0_SSE ;
 int SSCR1 ;
 int SSTO ;
 scalar_t__ atomic_read (int *) ;
 int pxa25x_ssp_comp (struct driver_data*) ;
 int pxa2xx_spi_dma_stop (struct driver_data*) ;
 int pxa2xx_spi_read (struct driver_data*,int ) ;
 int pxa2xx_spi_write (struct driver_data*,int ,int) ;
 struct driver_data* spi_controller_get_devdata (struct spi_controller*) ;
 int write_SSSR_CS (struct driver_data*,int ) ;

__attribute__((used)) static void pxa2xx_spi_handle_err(struct spi_controller *controller,
     struct spi_message *msg)
{
 struct driver_data *drv_data = spi_controller_get_devdata(controller);


 pxa2xx_spi_write(drv_data, SSCR0,
    pxa2xx_spi_read(drv_data, SSCR0) & ~SSCR0_SSE);

 write_SSSR_CS(drv_data, drv_data->clear_sr);
 pxa2xx_spi_write(drv_data, SSCR1,
    pxa2xx_spi_read(drv_data, SSCR1)
    & ~(drv_data->int_cr1 | drv_data->dma_cr1));
 if (!pxa25x_ssp_comp(drv_data))
  pxa2xx_spi_write(drv_data, SSTO, 0);
 if (atomic_read(&drv_data->dma_running))
  pxa2xx_spi_dma_stop(drv_data);
}
