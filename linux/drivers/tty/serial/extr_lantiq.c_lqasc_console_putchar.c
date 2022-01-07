
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 int ASCFSTAT_TXFREEMASK ;
 int ASCFSTAT_TXFREEOFF ;
 scalar_t__ LTQ_ASC_FSTAT ;
 scalar_t__ LTQ_ASC_TBUF ;
 int __raw_readl (scalar_t__) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void
lqasc_console_putchar(struct uart_port *port, int ch)
{
 int fifofree;

 if (!port->membase)
  return;

 do {
  fifofree = (__raw_readl(port->membase + LTQ_ASC_FSTAT)
   & ASCFSTAT_TXFREEMASK) >> ASCFSTAT_TXFREEOFF;
 } while (fifofree == 0);
 writeb(ch, port->membase + LTQ_ASC_TBUF);
}
