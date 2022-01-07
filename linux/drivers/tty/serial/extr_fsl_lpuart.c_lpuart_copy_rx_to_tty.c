
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tty_port {int dummy; } ;
struct TYPE_7__ {int rx; int frame; int parity; } ;
struct TYPE_8__ {int lock; int dev; TYPE_2__ icount; scalar_t__ membase; TYPE_1__* state; } ;
struct TYPE_9__ {scalar_t__ length; } ;
struct circ_buf {scalar_t__ head; scalar_t__ tail; int buf; } ;
struct lpuart_port {scalar_t__ dma_rx_timeout; int lpuart_timer; TYPE_3__ port; TYPE_4__ rx_sgl; int dma_rx_cookie; int dma_rx_chan; int dma_rx_desc; struct circ_buf rx_ring; } ;
struct dma_tx_state {scalar_t__ residue; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
struct TYPE_6__ {struct tty_port port; } ;


 int BUG_ON (int) ;
 int DMA_ERROR ;
 int DMA_FROM_DEVICE ;
 scalar_t__ UARTCFIFO ;
 unsigned char UARTCFIFO_RXFLUSH ;
 scalar_t__ UARTCR2 ;
 unsigned char UARTCR2_RE ;
 int UARTDATA ;
 scalar_t__ UARTDR ;
 scalar_t__ UARTSFIFO ;
 int UARTSFIFO_RXUF ;
 scalar_t__ UARTSR1 ;
 unsigned char UARTSR1_FE ;
 unsigned char UARTSR1_PE ;
 int UARTSTAT ;
 unsigned long UARTSTAT_FE ;
 unsigned long UARTSTAT_PE ;
 int async_tx_ack (int ) ;
 int dev_err (int ,char*) ;
 int dma_sync_sg_for_cpu (int ,TYPE_4__*,int,int ) ;
 int dma_sync_sg_for_device (int ,TYPE_4__*,int,int ) ;
 int dmaengine_tx_status (int ,int ,struct dma_tx_state*) ;
 scalar_t__ jiffies ;
 unsigned long lpuart32_read (TYPE_3__*,int ) ;
 scalar_t__ lpuart_is_32 (struct lpuart_port*) ;
 int mod_timer (int *,scalar_t__) ;
 int readb (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_string (struct tty_port*,int,int) ;
 int writeb (unsigned char,scalar_t__) ;

__attribute__((used)) static void lpuart_copy_rx_to_tty(struct lpuart_port *sport)
{
 struct tty_port *port = &sport->port.state->port;
 struct dma_tx_state state;
 enum dma_status dmastat;
 struct circ_buf *ring = &sport->rx_ring;
 unsigned long flags;
 int count = 0;

 if (lpuart_is_32(sport)) {
  unsigned long sr = lpuart32_read(&sport->port, UARTSTAT);

  if (sr & (UARTSTAT_PE | UARTSTAT_FE)) {

   lpuart32_read(&sport->port, UARTDATA);

   if (sr & UARTSTAT_PE)
    sport->port.icount.parity++;
   else if (sr & UARTSTAT_FE)
    sport->port.icount.frame++;
  }
 } else {
  unsigned char sr = readb(sport->port.membase + UARTSR1);

  if (sr & (UARTSR1_PE | UARTSR1_FE)) {
   unsigned char cr2;


   cr2 = readb(sport->port.membase + UARTCR2);
   cr2 &= ~UARTCR2_RE;
   writeb(cr2, sport->port.membase + UARTCR2);


   readb(sport->port.membase + UARTDR);

   if (sr & UARTSR1_PE)
    sport->port.icount.parity++;
   else if (sr & UARTSR1_FE)
    sport->port.icount.frame++;
   if (readb(sport->port.membase + UARTSFIFO) &
       UARTSFIFO_RXUF) {
    writeb(UARTSFIFO_RXUF,
           sport->port.membase + UARTSFIFO);
    writeb(UARTCFIFO_RXFLUSH,
           sport->port.membase + UARTCFIFO);
   }

   cr2 |= UARTCR2_RE;
   writeb(cr2, sport->port.membase + UARTCR2);
  }
 }

 async_tx_ack(sport->dma_rx_desc);

 spin_lock_irqsave(&sport->port.lock, flags);

 dmastat = dmaengine_tx_status(sport->dma_rx_chan,
    sport->dma_rx_cookie,
    &state);

 if (dmastat == DMA_ERROR) {
  dev_err(sport->port.dev, "Rx DMA transfer failed!\n");
  spin_unlock_irqrestore(&sport->port.lock, flags);
  return;
 }


 dma_sync_sg_for_cpu(sport->port.dev, &sport->rx_sgl, 1, DMA_FROM_DEVICE);
 ring->head = sport->rx_sgl.length - state.residue;
 BUG_ON(ring->head > sport->rx_sgl.length);
 if (ring->head < ring->tail) {
  count = sport->rx_sgl.length - ring->tail;

  tty_insert_flip_string(port, ring->buf + ring->tail, count);
  ring->tail = 0;
  sport->port.icount.rx += count;
 }


 if (ring->tail < ring->head) {
  count = ring->head - ring->tail;
  tty_insert_flip_string(port, ring->buf + ring->tail, count);

  if (ring->head >= sport->rx_sgl.length)
   ring->head = 0;
  ring->tail = ring->head;
  sport->port.icount.rx += count;
 }

 dma_sync_sg_for_device(sport->port.dev, &sport->rx_sgl, 1,
          DMA_FROM_DEVICE);

 spin_unlock_irqrestore(&sport->port.lock, flags);

 tty_flip_buffer_push(port);
 mod_timer(&sport->lpuart_timer, jiffies + sport->dma_rx_timeout);
}
