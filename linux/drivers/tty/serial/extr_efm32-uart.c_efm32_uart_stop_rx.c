
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct efm32_uart_port {int dummy; } ;


 int UARTn_CMD ;
 int UARTn_CMD_RXDIS ;
 int efm32_uart_write32 (struct efm32_uart_port*,int ,int ) ;
 struct efm32_uart_port* to_efm_port (struct uart_port*) ;

__attribute__((used)) static void efm32_uart_stop_rx(struct uart_port *port)
{
 struct efm32_uart_port *efm_port = to_efm_port(port);

 efm32_uart_write32(efm_port, UARTn_CMD_RXDIS, UARTn_CMD);
}
