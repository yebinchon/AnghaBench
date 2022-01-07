
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; scalar_t__ membase; } ;


 unsigned int CTRL_SND_BRK_SEQ ;
 scalar_t__ UART_CTRL (struct uart_port*) ;
 unsigned int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void mvebu_uart_break_ctl(struct uart_port *port, int brk)
{
 unsigned int ctl;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);
 ctl = readl(port->membase + UART_CTRL(port));
 if (brk == -1)
  ctl |= CTRL_SND_BRK_SEQ;
 else
  ctl &= ~CTRL_SND_BRK_SEQ;
 writel(ctl, port->membase + UART_CTRL(port));
 spin_unlock_irqrestore(&port->lock, flags);
}
