
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct synquacer_spi {scalar_t__ rx_words; int transfer_done; scalar_t__ regs; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ SYNQUACER_HSSPI_REG_RXE ;
 scalar_t__ SYNQUACER_HSSPI_REG_RXF ;
 int SYNQUACER_HSSPI_RXF_FIFO_MORE_THAN_THRESHOLD ;
 int SYNQUACER_HSSPI_RXF_SLAVE_RELEASED ;
 int complete (int *) ;
 int read_fifo (struct synquacer_spi*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t sq_spi_rx_handler(int irq, void *priv)
{
 uint32_t val;
 struct synquacer_spi *sspi = priv;

 val = readl(sspi->regs + SYNQUACER_HSSPI_REG_RXF);
 if ((val & SYNQUACER_HSSPI_RXF_SLAVE_RELEASED) ||
     (val & SYNQUACER_HSSPI_RXF_FIFO_MORE_THAN_THRESHOLD)) {
  read_fifo(sspi);

  if (sspi->rx_words == 0) {
   writel(0, sspi->regs + SYNQUACER_HSSPI_REG_RXE);
   complete(&sspi->transfer_done);
  }
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
