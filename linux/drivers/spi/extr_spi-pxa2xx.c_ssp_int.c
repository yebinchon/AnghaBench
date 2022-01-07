
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct driver_data {int mask_sr; int int_cr1; int (* transfer_handler ) (struct driver_data*) ;TYPE_2__* controller; TYPE_1__* pdev; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int cur_msg; } ;
struct TYPE_3__ {int dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SSCR1 ;
 int SSCR1_TIE ;
 int SSCR1_TINTE ;
 int SSSR ;
 int SSSR_TFS ;
 int SSSR_TINT ;
 int handle_bad_msg (struct driver_data*) ;
 scalar_t__ pm_runtime_suspended (int *) ;
 int pxa2xx_spi_read (struct driver_data*,int ) ;
 int pxa2xx_spi_write (struct driver_data*,int ,int) ;
 int stub1 (struct driver_data*) ;

__attribute__((used)) static irqreturn_t ssp_int(int irq, void *dev_id)
{
 struct driver_data *drv_data = dev_id;
 u32 sccr1_reg;
 u32 mask = drv_data->mask_sr;
 u32 status;







 if (pm_runtime_suspended(&drv_data->pdev->dev))
  return IRQ_NONE;







 status = pxa2xx_spi_read(drv_data, SSSR);
 if (status == ~0)
  return IRQ_NONE;

 sccr1_reg = pxa2xx_spi_read(drv_data, SSCR1);


 if (!(sccr1_reg & SSCR1_TIE))
  mask &= ~SSSR_TFS;


 if (!(sccr1_reg & SSCR1_TINTE))
  mask &= ~SSSR_TINT;

 if (!(status & mask))
  return IRQ_NONE;

 pxa2xx_spi_write(drv_data, SSCR1, sccr1_reg & ~drv_data->int_cr1);
 pxa2xx_spi_write(drv_data, SSCR1, sccr1_reg);

 if (!drv_data->controller->cur_msg) {
  handle_bad_msg(drv_data);

  return IRQ_HANDLED;
 }

 return drv_data->transfer_handler(drv_data);
}
