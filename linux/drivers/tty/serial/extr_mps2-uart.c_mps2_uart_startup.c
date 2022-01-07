
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_port {int irq; int dev; } ;
struct mps2_uart_port {int flags; int rx_irq; int tx_irq; } ;


 int IRQF_SHARED ;
 int MAKE_NAME (int ) ;
 int UART_PORT_COMBINED_IRQ ;
 int UARTn_CTRL ;
 int UARTn_CTRL_RX_GRP ;
 int UARTn_CTRL_TX_GRP ;
 int combined ;
 int dev_err (int ,char*,int) ;
 int free_irq (int ,struct mps2_uart_port*) ;
 int mps2_uart_combinedirq ;
 int mps2_uart_oerrirq ;
 int mps2_uart_read8 (struct uart_port*,int ) ;
 int mps2_uart_rxirq ;
 int mps2_uart_txirq ;
 int mps2_uart_write8 (struct uart_port*,int,int ) ;
 int overrun ;
 int request_irq (int ,int ,int ,int ,struct mps2_uart_port*) ;
 int rx ;
 struct mps2_uart_port* to_mps2_port (struct uart_port*) ;
 int tx ;

__attribute__((used)) static int mps2_uart_startup(struct uart_port *port)
{
 struct mps2_uart_port *mps_port = to_mps2_port(port);
 u8 control = mps2_uart_read8(port, UARTn_CTRL);
 int ret;

 control &= ~(UARTn_CTRL_RX_GRP | UARTn_CTRL_TX_GRP);

 mps2_uart_write8(port, control, UARTn_CTRL);

 if (mps_port->flags & UART_PORT_COMBINED_IRQ) {
  ret = request_irq(port->irq, mps2_uart_combinedirq, 0,
      MAKE_NAME(-combined), mps_port);

  if (ret) {
   dev_err(port->dev, "failed to register combinedirq (%d)\n", ret);
   return ret;
  }
 } else {
  ret = request_irq(port->irq, mps2_uart_oerrirq, IRQF_SHARED,
      MAKE_NAME(-overrun), mps_port);

  if (ret) {
   dev_err(port->dev, "failed to register oerrirq (%d)\n", ret);
   return ret;
  }

  ret = request_irq(mps_port->rx_irq, mps2_uart_rxirq, 0,
      MAKE_NAME(-rx), mps_port);
  if (ret) {
   dev_err(port->dev, "failed to register rxirq (%d)\n", ret);
   goto err_free_oerrirq;
  }

  ret = request_irq(mps_port->tx_irq, mps2_uart_txirq, 0,
      MAKE_NAME(-tx), mps_port);
  if (ret) {
   dev_err(port->dev, "failed to register txirq (%d)\n", ret);
   goto err_free_rxirq;
  }

 }

 control |= UARTn_CTRL_RX_GRP | UARTn_CTRL_TX_GRP;

 mps2_uart_write8(port, control, UARTn_CTRL);

 return 0;

err_free_rxirq:
 free_irq(mps_port->rx_irq, mps_port);
err_free_oerrirq:
 free_irq(port->irq, mps_port);

 return ret;
}
