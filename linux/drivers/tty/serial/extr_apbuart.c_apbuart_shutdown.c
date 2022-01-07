
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
 int free_irq (int ,struct uart_port*) ;

__attribute__((used)) static void apbuart_shutdown(struct uart_port *port)
{
 unsigned int cr;


 cr = UART_GET_CTRL(port);
 UART_PUT_CTRL(port,
        cr & ~(UART_CTRL_RE | UART_CTRL_TE |
        UART_CTRL_RI | UART_CTRL_TI));


 free_irq(port->irq, port);
}
