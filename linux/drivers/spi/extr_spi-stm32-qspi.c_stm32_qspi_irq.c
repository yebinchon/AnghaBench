
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_qspi {int data_completion; scalar_t__ io_base; } ;
typedef int irqreturn_t ;


 int CR_TCIE ;
 int CR_TEIE ;
 int IRQ_HANDLED ;
 scalar_t__ QSPI_CR ;
 scalar_t__ QSPI_SR ;
 int SR_TCF ;
 int SR_TEF ;
 int complete (int *) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t stm32_qspi_irq(int irq, void *dev_id)
{
 struct stm32_qspi *qspi = (struct stm32_qspi *)dev_id;
 u32 cr, sr;

 sr = readl_relaxed(qspi->io_base + QSPI_SR);

 if (sr & (SR_TEF | SR_TCF)) {

  cr = readl_relaxed(qspi->io_base + QSPI_CR);
  cr &= ~CR_TCIE & ~CR_TEIE;
  writel_relaxed(cr, qspi->io_base + QSPI_CR);
  complete(&qspi->data_completion);
 }

 return IRQ_HANDLED;
}
