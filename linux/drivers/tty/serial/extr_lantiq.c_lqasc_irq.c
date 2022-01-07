
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {scalar_t__ membase; } ;
struct ltq_uart_port {int lock; } ;
typedef int irqreturn_t ;


 int ASC_IRNCR_EIR ;
 int ASC_IRNCR_MASK ;
 int ASC_IRNCR_RIR ;
 int ASC_IRNCR_TIR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ LTQ_ASC_IRNCR ;
 int lqasc_err_int (int,void*) ;
 int lqasc_rx_int (int,void*) ;
 int lqasc_tx_int (int,void*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ltq_uart_port* to_ltq_uart_port (struct uart_port*) ;

__attribute__((used)) static irqreturn_t lqasc_irq(int irq, void *p)
{
 unsigned long flags;
 u32 stat;
 struct uart_port *port = p;
 struct ltq_uart_port *ltq_port = to_ltq_uart_port(port);

 spin_lock_irqsave(&ltq_port->lock, flags);
 stat = readl(port->membase + LTQ_ASC_IRNCR);
 spin_unlock_irqrestore(&ltq_port->lock, flags);
 if (!(stat & ASC_IRNCR_MASK))
  return IRQ_NONE;

 if (stat & ASC_IRNCR_TIR)
  lqasc_tx_int(irq, p);

 if (stat & ASC_IRNCR_RIR)
  lqasc_rx_int(irq, p);

 if (stat & ASC_IRNCR_EIR)
  lqasc_err_int(irq, p);

 return IRQ_HANDLED;
}
