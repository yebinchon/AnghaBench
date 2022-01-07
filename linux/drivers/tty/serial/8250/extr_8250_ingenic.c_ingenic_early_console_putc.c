
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_port {int dummy; } ;


 int UART_LSR ;
 int UART_LSR_TEMT ;
 int UART_TX ;
 int early_in (struct uart_port*,int ) ;
 int early_out (struct uart_port*,int ,int) ;

__attribute__((used)) static void ingenic_early_console_putc(struct uart_port *port, int c)
{
 uint8_t lsr;

 do {
  lsr = early_in(port, UART_LSR);
 } while ((lsr & UART_LSR_TEMT) == 0);

 early_out(port, UART_TX, c);
}
