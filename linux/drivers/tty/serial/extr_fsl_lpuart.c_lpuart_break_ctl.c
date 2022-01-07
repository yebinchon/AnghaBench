
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 scalar_t__ UARTCR2 ;
 unsigned char UARTCR2_SBK ;
 unsigned char readb (scalar_t__) ;
 int writeb (unsigned char,scalar_t__) ;

__attribute__((used)) static void lpuart_break_ctl(struct uart_port *port, int break_state)
{
 unsigned char temp;

 temp = readb(port->membase + UARTCR2) & ~UARTCR2_SBK;

 if (break_state != 0)
  temp |= UARTCR2_SBK;

 writeb(temp, port->membase + UARTCR2);
}
