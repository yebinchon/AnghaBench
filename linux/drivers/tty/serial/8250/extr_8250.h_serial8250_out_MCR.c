
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {scalar_t__ gpios; } ;


 int UART_MCR ;
 int mctrl_gpio_set (scalar_t__,int ) ;
 int serial8250_MCR_to_TIOCM (int) ;
 int serial_out (struct uart_8250_port*,int ,int) ;

__attribute__((used)) static inline void serial8250_out_MCR(struct uart_8250_port *up, int value)
{
 serial_out(up, UART_MCR, value);

 if (up->gpios)
  mctrl_gpio_set(up->gpios, serial8250_MCR_to_TIOCM(value));
}
