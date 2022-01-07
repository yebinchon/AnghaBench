
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_qspi {int pending; int cmd_completion; scalar_t__ regs; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ QSPI_IMR ;
 scalar_t__ QSPI_SR ;
 int QSPI_SR_CMD_COMPLETED ;
 int complete (int *) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static irqreturn_t atmel_qspi_interrupt(int irq, void *dev_id)
{
 struct atmel_qspi *aq = dev_id;
 u32 status, mask, pending;

 status = readl_relaxed(aq->regs + QSPI_SR);
 mask = readl_relaxed(aq->regs + QSPI_IMR);
 pending = status & mask;

 if (!pending)
  return IRQ_NONE;

 aq->pending |= pending;
 if ((aq->pending & QSPI_SR_CMD_COMPLETED) == QSPI_SR_CMD_COMPLETED)
  complete(&aq->cmd_completion);

 return IRQ_HANDLED;
}
