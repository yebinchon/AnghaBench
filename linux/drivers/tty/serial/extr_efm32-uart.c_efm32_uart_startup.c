
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int irq; int uartclk; } ;
struct TYPE_2__ {int location; } ;
struct efm32_uart_port {int clk; int txirq; TYPE_1__ pdata; } ;


 int DRIVER_NAME ;
 int UARTn_CMD ;
 int UARTn_CMD_RXEN ;
 int UARTn_IEN ;
 int UARTn_IF_RXDATAV ;
 int UARTn_IF_RXOF ;
 int UARTn_ROUTE ;
 int UARTn_ROUTE_LOCATION (int ) ;
 int UARTn_ROUTE_RXPEN ;
 int UARTn_ROUTE_TXPEN ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int clk_get_rate (int ) ;
 int efm32_uart_rxirq ;
 int efm32_uart_txirq ;
 int efm32_uart_write32 (struct efm32_uart_port*,int,int ) ;
 int efm_debug (struct efm32_uart_port*,char*) ;
 int free_irq (int ,struct efm32_uart_port*) ;
 int request_irq (int ,int ,int ,int ,struct efm32_uart_port*) ;
 struct efm32_uart_port* to_efm_port (struct uart_port*) ;

__attribute__((used)) static int efm32_uart_startup(struct uart_port *port)
{
 struct efm32_uart_port *efm_port = to_efm_port(port);
 int ret;

 ret = clk_enable(efm_port->clk);
 if (ret) {
  efm_debug(efm_port, "failed to enable clk\n");
  goto err_clk_enable;
 }
 port->uartclk = clk_get_rate(efm_port->clk);


 efm32_uart_write32(efm_port,
   UARTn_ROUTE_LOCATION(efm_port->pdata.location) |
   UARTn_ROUTE_RXPEN | UARTn_ROUTE_TXPEN,
   UARTn_ROUTE);

 ret = request_irq(port->irq, efm32_uart_rxirq, 0,
   DRIVER_NAME, efm_port);
 if (ret) {
  efm_debug(efm_port, "failed to register rxirq\n");
  goto err_request_irq_rx;
 }


 efm32_uart_write32(efm_port, 0, UARTn_IEN);

 ret = request_irq(efm_port->txirq, efm32_uart_txirq, 0,
   DRIVER_NAME, efm_port);
 if (ret) {
  efm_debug(efm_port, "failed to register txirq\n");
  free_irq(port->irq, efm_port);
err_request_irq_rx:

  clk_disable(efm_port->clk);
 } else {
  efm32_uart_write32(efm_port,
    UARTn_IF_RXDATAV | UARTn_IF_RXOF, UARTn_IEN);
  efm32_uart_write32(efm_port, UARTn_CMD_RXEN, UARTn_CMD);
 }

err_clk_enable:
 return ret;
}
