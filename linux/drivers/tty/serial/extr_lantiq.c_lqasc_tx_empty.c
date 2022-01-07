
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 int ASCFSTAT_TXFFLMASK ;
 scalar_t__ LTQ_ASC_FSTAT ;
 unsigned int TIOCSER_TEMT ;
 int __raw_readl (scalar_t__) ;

__attribute__((used)) static unsigned int
lqasc_tx_empty(struct uart_port *port)
{
 int status;
 status = __raw_readl(port->membase + LTQ_ASC_FSTAT) &
   ASCFSTAT_TXFFLMASK;
 return status ? 0 : TIOCSER_TEMT;
}
