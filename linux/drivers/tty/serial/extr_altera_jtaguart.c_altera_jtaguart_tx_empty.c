
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 scalar_t__ ALTERA_JTAGUART_CONTROL_REG ;
 int ALTERA_JTAGUART_CONTROL_WSPACE_MSK ;
 unsigned int TIOCSER_TEMT ;
 int readl (scalar_t__) ;

__attribute__((used)) static unsigned int altera_jtaguart_tx_empty(struct uart_port *port)
{
 return (readl(port->membase + ALTERA_JTAGUART_CONTROL_REG) &
  ALTERA_JTAGUART_CONTROL_WSPACE_MSK) ? TIOCSER_TEMT : 0;
}
