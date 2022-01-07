
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int brk; int parity; int overrun; } ;
struct uart_port {TYPE_2__ icount; scalar_t__ membase; int lock; scalar_t__ suspended; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct qcom_geni_serial_port {int brk; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {struct tty_port port; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int M_CMD_DONE_EN ;
 int M_GENI_CMD_ACTIVE ;
 int M_ILLEGAL_CMD_EN ;
 int M_TX_FIFO_WATERMARK_EN ;
 scalar_t__ SE_GENI_M_IRQ_CLEAR ;
 scalar_t__ SE_GENI_M_IRQ_EN ;
 scalar_t__ SE_GENI_M_IRQ_STATUS ;
 scalar_t__ SE_GENI_STATUS ;
 scalar_t__ SE_GENI_S_IRQ_CLEAR ;
 scalar_t__ SE_GENI_S_IRQ_STATUS ;
 int S_GP_IRQ_0_EN ;
 int S_GP_IRQ_1_EN ;
 int S_GP_IRQ_2_EN ;
 int S_GP_IRQ_3_EN ;
 int S_RX_FIFO_LAST_EN ;
 int S_RX_FIFO_WATERMARK_EN ;
 int S_RX_FIFO_WR_ERR_EN ;
 int TTY_OVERRUN ;
 scalar_t__ WARN_ON (int) ;
 int qcom_geni_serial_handle_rx (struct uart_port*,int) ;
 int qcom_geni_serial_handle_tx (struct uart_port*,int,int) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 struct qcom_geni_serial_port* to_dev_port (struct uart_port*,struct uart_port*) ;
 int tty_insert_flip_char (struct tty_port*,int ,int ) ;
 int uart_unlock_and_check_sysrq (struct uart_port*,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t qcom_geni_serial_isr(int isr, void *dev)
{
 u32 m_irq_en;
 u32 m_irq_status;
 u32 s_irq_status;
 u32 geni_status;
 struct uart_port *uport = dev;
 unsigned long flags;
 bool drop_rx = 0;
 struct tty_port *tport = &uport->state->port;
 struct qcom_geni_serial_port *port = to_dev_port(uport, uport);

 if (uport->suspended)
  return IRQ_NONE;

 spin_lock_irqsave(&uport->lock, flags);
 m_irq_status = readl(uport->membase + SE_GENI_M_IRQ_STATUS);
 s_irq_status = readl(uport->membase + SE_GENI_S_IRQ_STATUS);
 geni_status = readl(uport->membase + SE_GENI_STATUS);
 m_irq_en = readl(uport->membase + SE_GENI_M_IRQ_EN);
 writel(m_irq_status, uport->membase + SE_GENI_M_IRQ_CLEAR);
 writel(s_irq_status, uport->membase + SE_GENI_S_IRQ_CLEAR);

 if (WARN_ON(m_irq_status & M_ILLEGAL_CMD_EN))
  goto out_unlock;

 if (s_irq_status & S_RX_FIFO_WR_ERR_EN) {
  uport->icount.overrun++;
  tty_insert_flip_char(tport, 0, TTY_OVERRUN);
 }

 if (m_irq_status & m_irq_en & (M_TX_FIFO_WATERMARK_EN | M_CMD_DONE_EN))
  qcom_geni_serial_handle_tx(uport, m_irq_status & M_CMD_DONE_EN,
     geni_status & M_GENI_CMD_ACTIVE);

 if (s_irq_status & S_GP_IRQ_0_EN || s_irq_status & S_GP_IRQ_1_EN) {
  if (s_irq_status & S_GP_IRQ_0_EN)
   uport->icount.parity++;
  drop_rx = 1;
 } else if (s_irq_status & S_GP_IRQ_2_EN ||
     s_irq_status & S_GP_IRQ_3_EN) {
  uport->icount.brk++;
  port->brk = 1;
 }

 if (s_irq_status & S_RX_FIFO_WATERMARK_EN ||
     s_irq_status & S_RX_FIFO_LAST_EN)
  qcom_geni_serial_handle_rx(uport, drop_rx);

out_unlock:
 uart_unlock_and_check_sysrq(uport, flags);

 return IRQ_HANDLED;
}
