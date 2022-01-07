
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dummy; } ;
struct efm32_uart_port {int dummy; } ;


 int UARTn_CMD ;
 int UARTn_CMD_TXEN ;
 int UARTn_IEN ;
 int UARTn_IFC ;
 int UARTn_IF_TXBL ;
 int UARTn_IF_TXC ;
 int efm32_uart_read32 (struct efm32_uart_port*,int ) ;
 int efm32_uart_tx_chars (struct efm32_uart_port*) ;
 int efm32_uart_write32 (struct efm32_uart_port*,int,int ) ;
 struct efm32_uart_port* to_efm_port (struct uart_port*) ;

__attribute__((used)) static void efm32_uart_start_tx(struct uart_port *port)
{
 struct efm32_uart_port *efm_port = to_efm_port(port);
 u32 ien;

 efm32_uart_write32(efm_port,
   UARTn_IF_TXBL | UARTn_IF_TXC, UARTn_IFC);
 ien = efm32_uart_read32(efm_port, UARTn_IEN);
 efm32_uart_write32(efm_port,
   ien | UARTn_IF_TXBL | UARTn_IF_TXC, UARTn_IEN);
 efm32_uart_write32(efm_port, UARTn_CMD_TXEN, UARTn_CMD);

 efm32_uart_tx_chars(efm_port);
}
