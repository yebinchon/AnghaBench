
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int irq; } ;


 unsigned int UART_CTRL_RE ;
 unsigned int UART_CTRL_RI ;
 unsigned int UART_CTRL_TE ;
 unsigned int UART_CTRL_TI ;
 unsigned int UART_GET_CTRL (struct uart_port*) ;
 int UART_PUT_CTRL (struct uart_port*,unsigned int) ;
 int apbuart_int ;
 int request_irq (int ,int ,int ,char*,struct uart_port*) ;

__attribute__((used)) static int apbuart_startup(struct uart_port *port)
{
 int retval;
 unsigned int cr;


 retval = request_irq(port->irq, apbuart_int, 0, "apbuart", port);
 if (retval)
  return retval;


 cr = UART_GET_CTRL(port);
 UART_PUT_CTRL(port,
        cr | UART_CTRL_RE | UART_CTRL_TE |
        UART_CTRL_RI | UART_CTRL_TI);

 return 0;
}
