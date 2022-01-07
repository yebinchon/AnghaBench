
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {scalar_t__ membase; } ;


 int M_CMD_ABORT_EN ;
 int M_CMD_DONE_EN ;
 int M_GENI_CMD_ABORT ;
 scalar_t__ SE_GENI_M_CMD_CTRL_REG ;
 scalar_t__ SE_GENI_M_IRQ_CLEAR ;
 int SE_GENI_M_IRQ_STATUS ;
 int qcom_geni_serial_poll_bit (struct uart_port*,int ,int ,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void qcom_geni_serial_poll_tx_done(struct uart_port *uport)
{
 int done;
 u32 irq_clear = M_CMD_DONE_EN;

 done = qcom_geni_serial_poll_bit(uport, SE_GENI_M_IRQ_STATUS,
      M_CMD_DONE_EN, 1);
 if (!done) {
  writel(M_GENI_CMD_ABORT, uport->membase +
      SE_GENI_M_CMD_CTRL_REG);
  irq_clear |= M_CMD_ABORT_EN;
  qcom_geni_serial_poll_bit(uport, SE_GENI_M_IRQ_STATUS,
       M_CMD_ABORT_EN, 1);
 }
 writel(irq_clear, uport->membase + SE_GENI_M_IRQ_CLEAR);
}
