
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {scalar_t__ membase; } ;
struct qcom_geni_serial_port {int se; } ;


 int M_RX_FIFO_LAST_EN ;
 int M_RX_FIFO_WATERMARK_EN ;
 scalar_t__ SE_GENI_M_IRQ_EN ;
 scalar_t__ SE_GENI_STATUS ;
 int SE_GENI_S_CMD_CTRL_REG ;
 scalar_t__ SE_GENI_S_IRQ_CLEAR ;
 scalar_t__ SE_GENI_S_IRQ_EN ;
 int S_CMD_DONE_EN ;
 int S_GENI_CMD_ACTIVE ;
 int S_GENI_CMD_CANCEL ;
 int S_RX_FIFO_LAST_EN ;
 int S_RX_FIFO_WATERMARK_EN ;
 int geni_se_cancel_s_cmd (int *) ;
 int qcom_geni_serial_abort_rx (struct uart_port*) ;
 int qcom_geni_serial_poll_bit (struct uart_port*,int ,int ,int) ;
 int readl (scalar_t__) ;
 struct qcom_geni_serial_port* to_dev_port (struct uart_port*,struct uart_port*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void qcom_geni_serial_stop_rx(struct uart_port *uport)
{
 u32 irq_en;
 u32 status;
 struct qcom_geni_serial_port *port = to_dev_port(uport, uport);
 u32 irq_clear = S_CMD_DONE_EN;

 irq_en = readl(uport->membase + SE_GENI_S_IRQ_EN);
 irq_en &= ~(S_RX_FIFO_WATERMARK_EN | S_RX_FIFO_LAST_EN);
 writel(irq_en, uport->membase + SE_GENI_S_IRQ_EN);

 irq_en = readl(uport->membase + SE_GENI_M_IRQ_EN);
 irq_en &= ~(M_RX_FIFO_WATERMARK_EN | M_RX_FIFO_LAST_EN);
 writel(irq_en, uport->membase + SE_GENI_M_IRQ_EN);

 status = readl(uport->membase + SE_GENI_STATUS);

 if (!(status & S_GENI_CMD_ACTIVE))
  return;

 geni_se_cancel_s_cmd(&port->se);
 qcom_geni_serial_poll_bit(uport, SE_GENI_S_CMD_CTRL_REG,
     S_GENI_CMD_CANCEL, 0);
 status = readl(uport->membase + SE_GENI_STATUS);
 writel(irq_clear, uport->membase + SE_GENI_S_IRQ_CLEAR);
 if (status & S_GENI_CMD_ACTIVE)
  qcom_geni_serial_abort_rx(uport);
}
