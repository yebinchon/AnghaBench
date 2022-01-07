
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 unsigned long LINFLEXD_UARTSR_DTFTFF ;
 unsigned int TIOCSER_TEMT ;
 scalar_t__ UARTSR ;
 unsigned long readl (scalar_t__) ;

__attribute__((used)) static unsigned int linflex_tx_empty(struct uart_port *port)
{
 unsigned long status;

 status = readl(port->membase + UARTSR) & LINFLEXD_UARTSR_DTFTFF;

 return status ? TIOCSER_TEMT : 0;
}
