
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_port {int irq; } ;
struct mps2_uart_port {int flags; int tx_irq; int rx_irq; } ;


 int UART_PORT_COMBINED_IRQ ;
 int UARTn_CTRL ;
 int UARTn_CTRL_RX_GRP ;
 int UARTn_CTRL_TX_GRP ;
 int free_irq (int ,struct mps2_uart_port*) ;
 int mps2_uart_read8 (struct uart_port*,int ) ;
 int mps2_uart_write8 (struct uart_port*,int,int ) ;
 struct mps2_uart_port* to_mps2_port (struct uart_port*) ;

__attribute__((used)) static void mps2_uart_shutdown(struct uart_port *port)
{
 struct mps2_uart_port *mps_port = to_mps2_port(port);
 u8 control = mps2_uart_read8(port, UARTn_CTRL);

 control &= ~(UARTn_CTRL_RX_GRP | UARTn_CTRL_TX_GRP);

 mps2_uart_write8(port, control, UARTn_CTRL);

 if (!(mps_port->flags & UART_PORT_COMBINED_IRQ)) {
  free_irq(mps_port->rx_irq, mps_port);
  free_irq(mps_port->tx_irq, mps_port);
 }

 free_irq(port->irq, mps_port);
}
