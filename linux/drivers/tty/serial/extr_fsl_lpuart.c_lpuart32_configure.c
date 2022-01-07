
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpuart_port {int port; int lpuart_dma_tx_use; scalar_t__ lpuart_dma_rx_use; } ;


 int UARTCTRL ;
 unsigned long UARTCTRL_RIE ;
 unsigned long UARTCTRL_TIE ;
 int UARTWATER ;
 unsigned long UARTWATER_RXWATER_OFF ;
 unsigned long UARTWATER_WATER_MASK ;
 unsigned long lpuart32_read (int *,int ) ;
 int lpuart32_write (int *,unsigned long,int ) ;

__attribute__((used)) static void lpuart32_configure(struct lpuart_port *sport)
{
 unsigned long temp;

 if (sport->lpuart_dma_rx_use) {

  temp = lpuart32_read(&sport->port, UARTWATER);
  temp &= ~(UARTWATER_WATER_MASK << UARTWATER_RXWATER_OFF);
  lpuart32_write(&sport->port, temp, UARTWATER);
 }
 temp = lpuart32_read(&sport->port, UARTCTRL);
 if (!sport->lpuart_dma_rx_use)
  temp |= UARTCTRL_RIE;
 if (!sport->lpuart_dma_tx_use)
  temp |= UARTCTRL_TIE;
 lpuart32_write(&sport->port, temp, UARTCTRL);
}
