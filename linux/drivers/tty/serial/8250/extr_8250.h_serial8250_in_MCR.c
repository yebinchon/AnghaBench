
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {scalar_t__ gpios; } ;


 int UART_MCR ;
 unsigned int mctrl_gpio_get_outputs (scalar_t__,unsigned int*) ;
 int serial8250_TIOCM_to_MCR (unsigned int) ;
 int serial_in (struct uart_8250_port*,int ) ;

__attribute__((used)) static inline int serial8250_in_MCR(struct uart_8250_port *up)
{
 int mctrl;

 mctrl = serial_in(up, UART_MCR);

 if (up->gpios) {
  unsigned int mctrl_gpio = 0;

  mctrl_gpio = mctrl_gpio_get_outputs(up->gpios, &mctrl_gpio);
  mctrl |= serial8250_TIOCM_to_MCR(mctrl_gpio);
 }

 return mctrl;
}
