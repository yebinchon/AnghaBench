
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_message {int status; } ;
struct driver_data {int mask_sr; int dma_cr1; TYPE_1__* controller; int clear_sr; int dma_running; } ;
struct TYPE_2__ {struct spi_message* cur_msg; } ;


 int EIO ;
 int SSCR0 ;
 int SSCR0_SSE ;
 int SSCR1 ;
 int SSSR ;
 int SSSR_ROR ;
 int SSTO ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int pxa25x_ssp_comp (struct driver_data*) ;
 int pxa2xx_spi_read (struct driver_data*,int ) ;
 int pxa2xx_spi_write (struct driver_data*,int ,int) ;
 int spi_finalize_current_transfer (TYPE_1__*) ;
 int write_SSSR_CS (struct driver_data*,int ) ;

__attribute__((used)) static void pxa2xx_spi_dma_transfer_complete(struct driver_data *drv_data,
          bool error)
{
 struct spi_message *msg = drv_data->controller->cur_msg;







 if (atomic_dec_and_test(&drv_data->dma_running)) {





  if (!error) {
   u32 status = pxa2xx_spi_read(drv_data, SSSR)
         & drv_data->mask_sr;
   error = status & SSSR_ROR;
  }


  pxa2xx_spi_write(drv_data, SSCR1,
     pxa2xx_spi_read(drv_data, SSCR1)
     & ~drv_data->dma_cr1);
  write_SSSR_CS(drv_data, drv_data->clear_sr);
  if (!pxa25x_ssp_comp(drv_data))
   pxa2xx_spi_write(drv_data, SSTO, 0);

  if (error) {

   pxa2xx_spi_write(drv_data, SSCR0,
      pxa2xx_spi_read(drv_data, SSCR0)
      & ~SSCR0_SSE);
   msg->status = -EIO;
  }

  spi_finalize_current_transfer(drv_data->controller);
 }
}
