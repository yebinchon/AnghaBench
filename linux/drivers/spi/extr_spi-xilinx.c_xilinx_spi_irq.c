
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xilinx_spi {int (* read_fn ) (scalar_t__) ;int done; scalar_t__ regs; int (* write_fn ) (int,scalar_t__) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ XIPIF_V123B_IISR_OFFSET ;
 int XSPI_INTR_TX_EMPTY ;
 int complete (int *) ;
 int stub1 (scalar_t__) ;
 int stub2 (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t xilinx_spi_irq(int irq, void *dev_id)
{
 struct xilinx_spi *xspi = dev_id;
 u32 ipif_isr;


 ipif_isr = xspi->read_fn(xspi->regs + XIPIF_V123B_IISR_OFFSET);
 xspi->write_fn(ipif_isr, xspi->regs + XIPIF_V123B_IISR_OFFSET);

 if (ipif_isr & XSPI_INTR_TX_EMPTY) {
  complete(&xspi->done);
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
