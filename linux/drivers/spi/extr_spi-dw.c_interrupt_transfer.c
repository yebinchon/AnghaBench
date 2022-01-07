
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dw_spi {scalar_t__ rx_end; scalar_t__ rx; int master; } ;
typedef int irqreturn_t ;


 int DW_SPI_ICR ;
 int DW_SPI_ISR ;
 int IRQ_HANDLED ;
 int SPI_INT_RXOI ;
 int SPI_INT_RXUI ;
 int SPI_INT_TXEI ;
 int SPI_INT_TXOI ;
 int dw_reader (struct dw_spi*) ;
 int dw_readl (struct dw_spi*,int ) ;
 int dw_writer (struct dw_spi*) ;
 int int_error_stop (struct dw_spi*,char*) ;
 int spi_finalize_current_transfer (int ) ;
 int spi_mask_intr (struct dw_spi*,int) ;
 int spi_umask_intr (struct dw_spi*,int) ;

__attribute__((used)) static irqreturn_t interrupt_transfer(struct dw_spi *dws)
{
 u16 irq_status = dw_readl(dws, DW_SPI_ISR);


 if (irq_status & (SPI_INT_TXOI | SPI_INT_RXOI | SPI_INT_RXUI)) {
  dw_readl(dws, DW_SPI_ICR);
  int_error_stop(dws, "interrupt_transfer: fifo overrun/underrun");
  return IRQ_HANDLED;
 }

 dw_reader(dws);
 if (dws->rx_end == dws->rx) {
  spi_mask_intr(dws, SPI_INT_TXEI);
  spi_finalize_current_transfer(dws->master);
  return IRQ_HANDLED;
 }
 if (irq_status & SPI_INT_TXEI) {
  spi_mask_intr(dws, SPI_INT_TXEI);
  dw_writer(dws);

  spi_umask_intr(dws, SPI_INT_TXEI);
 }

 return IRQ_HANDLED;
}
