
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct synquacer_spi {scalar_t__ tx_words; int transfer_done; scalar_t__ regs; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ SYNQUACER_HSSPI_REG_TXE ;
 scalar_t__ SYNQUACER_HSSPI_REG_TXF ;
 int SYNQUACER_HSSPI_TXF_FIFO_EMPTY ;
 int complete (int *) ;
 int readl (scalar_t__) ;
 int write_fifo (struct synquacer_spi*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t sq_spi_tx_handler(int irq, void *priv)
{
 uint32_t val;
 struct synquacer_spi *sspi = priv;

 val = readl(sspi->regs + SYNQUACER_HSSPI_REG_TXF);
 if (val & SYNQUACER_HSSPI_TXF_FIFO_EMPTY) {
  if (sspi->tx_words == 0) {
   writel(0, sspi->regs + SYNQUACER_HSSPI_REG_TXE);
   complete(&sspi->transfer_done);
  } else {
   write_fifo(sspi);
  }
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
