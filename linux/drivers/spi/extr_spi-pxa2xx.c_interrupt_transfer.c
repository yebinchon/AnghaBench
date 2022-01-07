
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct driver_data {int mask_sr; scalar_t__ tx; scalar_t__ tx_end; int rx_end; int rx; int n_bytes; scalar_t__ (* read ) (struct driver_data*) ;scalar_t__ (* write ) (struct driver_data*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SSCR1 ;
 int SSCR1_TIE ;
 int SSSR ;
 int SSSR_ROR ;
 int SSSR_TFS ;
 int SSSR_TINT ;
 int SSSR_TUR ;
 int int_error_stop (struct driver_data*,char*) ;
 int int_transfer_complete (struct driver_data*) ;
 scalar_t__ pxa25x_ssp_comp (struct driver_data*) ;
 int pxa2xx_spi_clear_rx_thre (struct driver_data*,int*) ;
 int pxa2xx_spi_get_rx_default_thre (struct driver_data*) ;
 int pxa2xx_spi_read (struct driver_data*,int ) ;
 int pxa2xx_spi_set_rx_thre (struct driver_data*,int*,int) ;
 int pxa2xx_spi_write (struct driver_data*,int ,int) ;
 scalar_t__ stub1 (struct driver_data*) ;
 scalar_t__ stub2 (struct driver_data*) ;
 scalar_t__ stub3 (struct driver_data*) ;
 scalar_t__ stub4 (struct driver_data*) ;

__attribute__((used)) static irqreturn_t interrupt_transfer(struct driver_data *drv_data)
{
 u32 irq_mask = (pxa2xx_spi_read(drv_data, SSCR1) & SSCR1_TIE) ?
         drv_data->mask_sr : drv_data->mask_sr & ~SSSR_TFS;

 u32 irq_status = pxa2xx_spi_read(drv_data, SSSR) & irq_mask;

 if (irq_status & SSSR_ROR) {
  int_error_stop(drv_data, "interrupt_transfer: fifo overrun");
  return IRQ_HANDLED;
 }

 if (irq_status & SSSR_TUR) {
  int_error_stop(drv_data, "interrupt_transfer: fifo underrun");
  return IRQ_HANDLED;
 }

 if (irq_status & SSSR_TINT) {
  pxa2xx_spi_write(drv_data, SSSR, SSSR_TINT);
  if (drv_data->read(drv_data)) {
   int_transfer_complete(drv_data);
   return IRQ_HANDLED;
  }
 }


 do {
  if (drv_data->read(drv_data)) {
   int_transfer_complete(drv_data);
   return IRQ_HANDLED;
  }
 } while (drv_data->write(drv_data));

 if (drv_data->read(drv_data)) {
  int_transfer_complete(drv_data);
  return IRQ_HANDLED;
 }

 if (drv_data->tx == drv_data->tx_end) {
  u32 bytes_left;
  u32 sccr1_reg;

  sccr1_reg = pxa2xx_spi_read(drv_data, SSCR1);
  sccr1_reg &= ~SSCR1_TIE;





  if (pxa25x_ssp_comp(drv_data)) {
   u32 rx_thre;

   pxa2xx_spi_clear_rx_thre(drv_data, &sccr1_reg);

   bytes_left = drv_data->rx_end - drv_data->rx;
   switch (drv_data->n_bytes) {
   case 4:
    bytes_left >>= 2;
    break;
   case 2:
    bytes_left >>= 1;
    break;
   }

   rx_thre = pxa2xx_spi_get_rx_default_thre(drv_data);
   if (rx_thre > bytes_left)
    rx_thre = bytes_left;

   pxa2xx_spi_set_rx_thre(drv_data, &sccr1_reg, rx_thre);
  }
  pxa2xx_spi_write(drv_data, SSCR1, sccr1_reg);
 }


 return IRQ_HANDLED;
}
