
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_port {int dummy; } ;


 unsigned int TIOCSER_TEMT ;
 int UARTn_STATE ;
 int UARTn_STATE_TX_FULL ;
 int mps2_uart_read8 (struct uart_port*,int ) ;

__attribute__((used)) static unsigned int mps2_uart_tx_empty(struct uart_port *port)
{
 u8 status = mps2_uart_read8(port, UARTn_STATE);

 return (status & UARTn_STATE_TX_FULL) ? 0 : TIOCSER_TEMT;
}
