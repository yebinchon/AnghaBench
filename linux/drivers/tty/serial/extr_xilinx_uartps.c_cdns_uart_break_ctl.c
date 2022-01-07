
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; scalar_t__ membase; } ;


 scalar_t__ CDNS_UART_CR ;
 unsigned int CDNS_UART_CR_STARTBRK ;
 unsigned int CDNS_UART_CR_STOPBRK ;
 unsigned int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void cdns_uart_break_ctl(struct uart_port *port, int ctl)
{
 unsigned int status;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);

 status = readl(port->membase + CDNS_UART_CR);

 if (ctl == -1)
  writel(CDNS_UART_CR_STARTBRK | status,
    port->membase + CDNS_UART_CR);
 else {
  if ((status & CDNS_UART_CR_STOPBRK) == 0)
   writel(CDNS_UART_CR_STOPBRK | status,
     port->membase + CDNS_UART_CR);
 }
 spin_unlock_irqrestore(&port->lock, flags);
}
