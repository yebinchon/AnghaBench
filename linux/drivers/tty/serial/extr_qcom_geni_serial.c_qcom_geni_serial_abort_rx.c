
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {scalar_t__ membase; } ;


 int FORCE_DEFAULT ;
 scalar_t__ GENI_FORCE_DEFAULT_REG ;
 scalar_t__ SE_GENI_S_CMD_CTRL_REG ;
 scalar_t__ SE_GENI_S_IRQ_CLEAR ;
 int S_CMD_ABORT_EN ;
 int S_CMD_DONE_EN ;
 int S_GENI_CMD_ABORT ;
 int qcom_geni_serial_poll_bit (struct uart_port*,scalar_t__,int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void qcom_geni_serial_abort_rx(struct uart_port *uport)
{
 u32 irq_clear = S_CMD_DONE_EN | S_CMD_ABORT_EN;

 writel(S_GENI_CMD_ABORT, uport->membase + SE_GENI_S_CMD_CTRL_REG);
 qcom_geni_serial_poll_bit(uport, SE_GENI_S_CMD_CTRL_REG,
     S_GENI_CMD_ABORT, 0);
 writel(irq_clear, uport->membase + SE_GENI_S_IRQ_CLEAR);
 writel(FORCE_DEFAULT, uport->membase + GENI_FORCE_DEFAULT_REG);
}
