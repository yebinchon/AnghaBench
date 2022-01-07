
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {scalar_t__ membase; int uartclk; } ;
struct ltq_uart_port {TYPE_1__* soc; int lock; int freqclk; int clk; } ;
struct TYPE_2__ {int (* request_irq ) (struct uart_port*) ;} ;


 int ASCCLC_DISS ;
 int ASCCLC_RMCMASK ;
 int ASCCLC_RMCOFFSET ;
 int ASCCON_FEN ;
 int ASCCON_M_8ASYNC ;
 int ASCCON_ROEN ;
 int ASCCON_TOEN ;
 int ASCRXFCON_RXFEN ;
 int ASCRXFCON_RXFFLU ;
 int ASCRXFCON_RXFITLMASK ;
 int ASCRXFCON_RXFITLOFF ;
 int ASCTXFCON_TXFEN ;
 int ASCTXFCON_TXFFLU ;
 int ASCTXFCON_TXFITLMASK ;
 int ASCTXFCON_TXFITLOFF ;
 int ASC_IRNREN_ERR ;
 int ASC_IRNREN_RX ;
 int ASC_IRNREN_TX ;
 int IS_ERR (int ) ;
 scalar_t__ LTQ_ASC_CLC ;
 scalar_t__ LTQ_ASC_CON ;
 scalar_t__ LTQ_ASC_IRNREN ;
 scalar_t__ LTQ_ASC_PISEL ;
 scalar_t__ LTQ_ASC_RXFCON ;
 scalar_t__ LTQ_ASC_TXFCON ;
 int RXFIFO_FL ;
 int TXFIFO_FL ;
 int __raw_writel (int,scalar_t__) ;
 int asc_update_bits (int,int,scalar_t__) ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct uart_port*) ;
 struct ltq_uart_port* to_ltq_uart_port (struct uart_port*) ;
 int wmb () ;

__attribute__((used)) static int
lqasc_startup(struct uart_port *port)
{
 struct ltq_uart_port *ltq_port = to_ltq_uart_port(port);
 int retval;
 unsigned long flags;

 if (!IS_ERR(ltq_port->clk))
  clk_prepare_enable(ltq_port->clk);
 port->uartclk = clk_get_rate(ltq_port->freqclk);

 spin_lock_irqsave(&ltq_port->lock, flags);
 asc_update_bits(ASCCLC_DISS | ASCCLC_RMCMASK, (1 << ASCCLC_RMCOFFSET),
  port->membase + LTQ_ASC_CLC);

 __raw_writel(0, port->membase + LTQ_ASC_PISEL);
 __raw_writel(
  ((TXFIFO_FL << ASCTXFCON_TXFITLOFF) & ASCTXFCON_TXFITLMASK) |
  ASCTXFCON_TXFEN | ASCTXFCON_TXFFLU,
  port->membase + LTQ_ASC_TXFCON);
 __raw_writel(
  ((RXFIFO_FL << ASCRXFCON_RXFITLOFF) & ASCRXFCON_RXFITLMASK)
  | ASCRXFCON_RXFEN | ASCRXFCON_RXFFLU,
  port->membase + LTQ_ASC_RXFCON);



 wmb();
 asc_update_bits(0, ASCCON_M_8ASYNC | ASCCON_FEN | ASCCON_TOEN |
  ASCCON_ROEN, port->membase + LTQ_ASC_CON);

 spin_unlock_irqrestore(&ltq_port->lock, flags);

 retval = ltq_port->soc->request_irq(port);
 if (retval)
  return retval;

 __raw_writel(ASC_IRNREN_RX | ASC_IRNREN_ERR | ASC_IRNREN_TX,
  port->membase + LTQ_ASC_IRNREN);
 return retval;
}
