
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct spi_controller {int cur_msg; } ;
struct dw_spi {int (* transfer_handler ) (struct dw_spi*) ;} ;
typedef int irqreturn_t ;


 int DW_SPI_ISR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SPI_INT_TXEI ;
 int dw_readl (struct dw_spi*,int ) ;
 struct dw_spi* spi_controller_get_devdata (struct spi_controller*) ;
 int spi_mask_intr (struct dw_spi*,int ) ;
 int stub1 (struct dw_spi*) ;

__attribute__((used)) static irqreturn_t dw_spi_irq(int irq, void *dev_id)
{
 struct spi_controller *master = dev_id;
 struct dw_spi *dws = spi_controller_get_devdata(master);
 u16 irq_status = dw_readl(dws, DW_SPI_ISR) & 0x3f;

 if (!irq_status)
  return IRQ_NONE;

 if (!master->cur_msg) {
  spi_mask_intr(dws, SPI_INT_TXEI);
  return IRQ_HANDLED;
 }

 return dws->transfer_handler(dws);
}
