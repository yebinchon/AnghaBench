
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpuart_port {int port; int lpuart_dma_tx_use; int lpuart_dma_rx_use; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int UARTSTAT ;
 unsigned long UARTSTAT_RDRF ;
 unsigned long UARTSTAT_TDRE ;
 int UARTWATER ;
 unsigned long UARTWATER_RXCNT_OFF ;
 unsigned long lpuart32_read (int *,int ) ;
 int lpuart32_rxint (struct lpuart_port*) ;
 int lpuart32_txint (struct lpuart_port*) ;
 int lpuart32_write (int *,unsigned long,int ) ;

__attribute__((used)) static irqreturn_t lpuart32_int(int irq, void *dev_id)
{
 struct lpuart_port *sport = dev_id;
 unsigned long sts, rxcount;

 sts = lpuart32_read(&sport->port, UARTSTAT);
 rxcount = lpuart32_read(&sport->port, UARTWATER);
 rxcount = rxcount >> UARTWATER_RXCNT_OFF;

 if ((sts & UARTSTAT_RDRF || rxcount > 0) && !sport->lpuart_dma_rx_use)
  lpuart32_rxint(sport);

 if ((sts & UARTSTAT_TDRE) && !sport->lpuart_dma_tx_use)
  lpuart32_txint(sport);

 lpuart32_write(&sport->port, sts, UARTSTAT);
 return IRQ_HANDLED;
}
