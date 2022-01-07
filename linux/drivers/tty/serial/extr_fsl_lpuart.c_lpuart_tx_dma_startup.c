
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ membase; } ;
struct lpuart_port {int lpuart_dma_tx_use; TYPE_1__ port; int dma_wait; scalar_t__ dma_tx_chan; } ;


 int UARTBAUD ;
 int UARTBAUD_TDMAE ;
 scalar_t__ UARTCR5 ;
 int UARTCR5_TDMAS ;
 int init_waitqueue_head (int *) ;
 int lpuart32_read (TYPE_1__*,int ) ;
 int lpuart32_write (TYPE_1__*,int,int ) ;
 int lpuart_dma_tx_request (TYPE_1__*) ;
 scalar_t__ lpuart_is_32 (struct lpuart_port*) ;
 int readb (scalar_t__) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void lpuart_tx_dma_startup(struct lpuart_port *sport)
{
 u32 uartbaud;

 if (sport->dma_tx_chan && !lpuart_dma_tx_request(&sport->port)) {
  init_waitqueue_head(&sport->dma_wait);
  sport->lpuart_dma_tx_use = 1;
  if (lpuart_is_32(sport)) {
   uartbaud = lpuart32_read(&sport->port, UARTBAUD);
   lpuart32_write(&sport->port,
           uartbaud | UARTBAUD_TDMAE, UARTBAUD);
  } else {
   writeb(readb(sport->port.membase + UARTCR5) |
    UARTCR5_TDMAS, sport->port.membase + UARTCR5);
  }
 } else {
  sport->lpuart_dma_tx_use = 0;
 }
}
