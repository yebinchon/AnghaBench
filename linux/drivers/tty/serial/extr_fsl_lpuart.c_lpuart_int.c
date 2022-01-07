
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ membase; } ;
struct lpuart_port {int lpuart_dma_tx_use; int lpuart_dma_rx_use; TYPE_1__ port; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ UARTSR1 ;
 unsigned char UARTSR1_RDRF ;
 unsigned char UARTSR1_TDRE ;
 int lpuart_rxint (struct lpuart_port*) ;
 int lpuart_txint (struct lpuart_port*) ;
 unsigned char readb (scalar_t__) ;

__attribute__((used)) static irqreturn_t lpuart_int(int irq, void *dev_id)
{
 struct lpuart_port *sport = dev_id;
 unsigned char sts;

 sts = readb(sport->port.membase + UARTSR1);

 if (sts & UARTSR1_RDRF && !sport->lpuart_dma_rx_use)
  lpuart_rxint(sport);

 if (sts & UARTSR1_TDRE && !sport->lpuart_dma_tx_use)
  lpuart_txint(sport);

 return IRQ_HANDLED;
}
