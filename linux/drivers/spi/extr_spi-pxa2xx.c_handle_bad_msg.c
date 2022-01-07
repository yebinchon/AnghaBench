
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct driver_data {int int_cr1; TYPE_1__* pdev; int clear_sr; } ;
struct TYPE_2__ {int dev; } ;


 int SSCR0 ;
 int SSCR0_SSE ;
 int SSCR1 ;
 int SSTO ;
 int dev_err (int *,char*) ;
 int pxa25x_ssp_comp (struct driver_data*) ;
 int pxa2xx_spi_read (struct driver_data*,int ) ;
 int pxa2xx_spi_write (struct driver_data*,int ,int) ;
 int write_SSSR_CS (struct driver_data*,int ) ;

__attribute__((used)) static void handle_bad_msg(struct driver_data *drv_data)
{
 pxa2xx_spi_write(drv_data, SSCR0,
    pxa2xx_spi_read(drv_data, SSCR0) & ~SSCR0_SSE);
 pxa2xx_spi_write(drv_data, SSCR1,
    pxa2xx_spi_read(drv_data, SSCR1) & ~drv_data->int_cr1);
 if (!pxa25x_ssp_comp(drv_data))
  pxa2xx_spi_write(drv_data, SSTO, 0);
 write_SSSR_CS(drv_data, drv_data->clear_sr);

 dev_err(&drv_data->pdev->dev,
  "bad message state in interrupt handler\n");
}
