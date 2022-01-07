
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dummy; } ;
struct efm32_uart_port {int dummy; } ;


 unsigned int TIOCSER_TEMT ;
 int UARTn_STATUS ;
 int UARTn_STATUS_TXC ;
 int efm32_uart_read32 (struct efm32_uart_port*,int ) ;
 struct efm32_uart_port* to_efm_port (struct uart_port*) ;

__attribute__((used)) static unsigned int efm32_uart_tx_empty(struct uart_port *port)
{
 struct efm32_uart_port *efm_port = to_efm_port(port);
 u32 status = efm32_uart_read32(efm_port, UARTn_STATUS);

 if (status & UARTn_STATUS_TXC)
  return TIOCSER_TEMT;
 else
  return 0;
}
