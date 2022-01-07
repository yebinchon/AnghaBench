
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned long LINFLEXD_UARTSR_DRFRFE ;
 unsigned long LINFLEXD_UARTSR_DTFTFF ;
 scalar_t__ UARTSR ;
 int linflex_rxint (int,void*) ;
 int linflex_txint (int,void*) ;
 unsigned long readl (scalar_t__) ;

__attribute__((used)) static irqreturn_t linflex_int(int irq, void *dev_id)
{
 struct uart_port *sport = dev_id;
 unsigned long status;

 status = readl(sport->membase + UARTSR);

 if (status & LINFLEXD_UARTSR_DRFRFE)
  linflex_rxint(irq, dev_id);
 if (status & LINFLEXD_UARTSR_DTFTFF)
  linflex_txint(irq, dev_id);

 return IRQ_HANDLED;
}
