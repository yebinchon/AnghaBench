
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct uart_port {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* get_ipcr ) (struct uart_port*) ;scalar_t__ (* tx_rdy ) (struct uart_port*) ;int (* tx_clr_irq ) (struct uart_port*) ;scalar_t__ (* rx_rdy ) (struct uart_port*) ;int (* rx_clr_irq ) (struct uart_port*) ;} ;


 int IRQ_HANDLED ;
 unsigned long ISR_PASS_LIMIT ;
 int MPC52xx_PSC_CTS ;
 int MPC52xx_PSC_DCD ;
 int MPC52xx_PSC_D_CTS ;
 int MPC52xx_PSC_D_DCD ;
 unsigned int mpc52xx_uart_int_rx_chars (struct uart_port*) ;
 unsigned int mpc52xx_uart_int_tx_chars (struct uart_port*) ;
 TYPE_1__* psc_ops ;
 int stub1 (struct uart_port*) ;
 scalar_t__ stub2 (struct uart_port*) ;
 int stub3 (struct uart_port*) ;
 scalar_t__ stub4 (struct uart_port*) ;
 int stub5 (struct uart_port*) ;
 int uart_handle_cts_change (struct uart_port*,int) ;
 int uart_handle_dcd_change (struct uart_port*,int) ;

__attribute__((used)) static irqreturn_t
mpc5xxx_uart_process_int(struct uart_port *port)
{
 unsigned long pass = ISR_PASS_LIMIT;
 unsigned int keepgoing;
 u8 status;


 do {

  keepgoing = 0;

  psc_ops->rx_clr_irq(port);
  if (psc_ops->rx_rdy(port))
   keepgoing |= mpc52xx_uart_int_rx_chars(port);

  psc_ops->tx_clr_irq(port);
  if (psc_ops->tx_rdy(port))
   keepgoing |= mpc52xx_uart_int_tx_chars(port);

  status = psc_ops->get_ipcr(port);
  if (status & MPC52xx_PSC_D_DCD)
   uart_handle_dcd_change(port, !(status & MPC52xx_PSC_DCD));

  if (status & MPC52xx_PSC_D_CTS)
   uart_handle_cts_change(port, !(status & MPC52xx_PSC_CTS));


  if (!(--pass))
   keepgoing = 0;

 } while (keepgoing);

 return IRQ_HANDLED;
}
