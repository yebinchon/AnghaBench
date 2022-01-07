
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 scalar_t__ UARTCR2 ;
 unsigned char UARTCR2_TCIE ;
 unsigned char UARTCR2_TIE ;
 unsigned char readb (scalar_t__) ;
 int writeb (unsigned char,scalar_t__) ;

__attribute__((used)) static void lpuart_stop_tx(struct uart_port *port)
{
 unsigned char temp;

 temp = readb(port->membase + UARTCR2);
 temp &= ~(UARTCR2_TIE | UARTCR2_TCIE);
 writeb(temp, port->membase + UARTCR2);
}
