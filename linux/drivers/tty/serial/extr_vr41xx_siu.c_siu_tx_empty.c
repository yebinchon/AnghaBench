
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_port {int dummy; } ;


 unsigned int TIOCSER_TEMT ;
 int UART_LSR ;
 int UART_LSR_TEMT ;
 int siu_read (struct uart_port*,int ) ;

__attribute__((used)) static unsigned int siu_tx_empty(struct uart_port *port)
{
 uint8_t lsr;

 lsr = siu_read(port, UART_LSR);
 if (lsr & UART_LSR_TEMT)
  return TIOCSER_TEMT;

 return 0;
}
