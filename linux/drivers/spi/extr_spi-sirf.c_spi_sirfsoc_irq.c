
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sirfsoc_spi {int type; TYPE_1__* regs; scalar_t__ base; int rx_done; int tx_done; scalar_t__ tx_by_cmd; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ int_st; scalar_t__ usp_int_en_clr; scalar_t__ int_en; } ;


 int IRQ_HANDLED ;
 int SIRFSOC_SPI_FRM_END ;
 unsigned long SIRFSOC_SPI_RX_IO_DMA ;
 int SIRFSOC_SPI_RX_OFLOW ;
 int SIRFSOC_SPI_TXFIFO_EMPTY ;
 int SIRFSOC_SPI_TX_UFLOW ;



 int complete (int *) ;
 int cpu_relax () ;
 unsigned long readl (scalar_t__) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static irqreturn_t spi_sirfsoc_irq(int irq, void *dev_id)
{
 struct sirfsoc_spi *sspi = dev_id;
 u32 spi_stat;

 spi_stat = readl(sspi->base + sspi->regs->int_st);
 if (sspi->tx_by_cmd && sspi->type == 130
  && (spi_stat & SIRFSOC_SPI_FRM_END)) {
  complete(&sspi->tx_done);
  writel(0x0, sspi->base + sspi->regs->int_en);
  writel(readl(sspi->base + sspi->regs->int_st),
    sspi->base + sspi->regs->int_st);
  return IRQ_HANDLED;
 }

 if (spi_stat & SIRFSOC_SPI_RX_OFLOW ||
   spi_stat & SIRFSOC_SPI_TX_UFLOW) {
  complete(&sspi->tx_done);
  complete(&sspi->rx_done);
  switch (sspi->type) {
  case 130:
  case 128:
   writel(0x0, sspi->base + sspi->regs->int_en);
   break;
  case 129:
   writel(~0UL, sspi->base + sspi->regs->usp_int_en_clr);
   break;
  }
  writel(readl(sspi->base + sspi->regs->int_st),
    sspi->base + sspi->regs->int_st);
  return IRQ_HANDLED;
 }
 if (spi_stat & SIRFSOC_SPI_TXFIFO_EMPTY)
  complete(&sspi->tx_done);
 while (!(readl(sspi->base + sspi->regs->int_st) &
  SIRFSOC_SPI_RX_IO_DMA))
  cpu_relax();
 complete(&sspi->rx_done);
 switch (sspi->type) {
 case 130:
 case 128:
  writel(0x0, sspi->base + sspi->regs->int_en);
  break;
 case 129:
  writel(~0UL, sspi->base + sspi->regs->usp_int_en_clr);
  break;
 }
 writel(readl(sspi->base + sspi->regs->int_st),
   sspi->base + sspi->regs->int_st);

 return IRQ_HANDLED;
}
