
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {scalar_t__ membase; } ;
struct ltq_uart_port {int clk; int lock; TYPE_1__* soc; } ;
struct TYPE_2__ {int (* free_irq ) (struct uart_port*) ;} ;


 int ASCRXFCON_RXFEN ;
 int ASCRXFCON_RXFFLU ;
 int ASCTXFCON_TXFEN ;
 int ASCTXFCON_TXFFLU ;
 int IS_ERR (int ) ;
 scalar_t__ LTQ_ASC_CON ;
 scalar_t__ LTQ_ASC_RXFCON ;
 scalar_t__ LTQ_ASC_TXFCON ;
 int __raw_writel (int ,scalar_t__) ;
 int asc_update_bits (int ,int ,scalar_t__) ;
 int clk_disable_unprepare (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct uart_port*) ;
 struct ltq_uart_port* to_ltq_uart_port (struct uart_port*) ;

__attribute__((used)) static void
lqasc_shutdown(struct uart_port *port)
{
 struct ltq_uart_port *ltq_port = to_ltq_uart_port(port);
 unsigned long flags;

 ltq_port->soc->free_irq(port);

 spin_lock_irqsave(&ltq_port->lock, flags);
 __raw_writel(0, port->membase + LTQ_ASC_CON);
 asc_update_bits(ASCRXFCON_RXFEN, ASCRXFCON_RXFFLU,
  port->membase + LTQ_ASC_RXFCON);
 asc_update_bits(ASCTXFCON_TXFEN, ASCTXFCON_TXFFLU,
  port->membase + LTQ_ASC_TXFCON);
 spin_unlock_irqrestore(&ltq_port->lock, flags);
 if (!IS_ERR(ltq_port->clk))
  clk_disable_unprepare(ltq_port->clk);
}
