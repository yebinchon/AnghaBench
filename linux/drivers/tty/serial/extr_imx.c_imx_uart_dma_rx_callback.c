
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_port {int dummy; } ;
struct scatterlist {int dummy; } ;
struct TYPE_5__ {unsigned int rx; int buf_overrun; } ;
struct TYPE_6__ {int ignore_status_mask; int dev; TYPE_2__ icount; TYPE_1__* state; } ;
struct circ_buf {int head; int tail; } ;
struct imx_port {unsigned int rx_periods; TYPE_3__ port; scalar_t__ rx_buf; int rx_cookie; struct circ_buf rx_ring; struct scatterlist rx_sgl; struct dma_chan* dma_chan_rx; } ;
struct dma_tx_state {int residue; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
struct TYPE_4__ {struct tty_port port; } ;


 int DMA_ERROR ;
 int DMA_FROM_DEVICE ;
 int URXD_DUMMY_READ ;
 int WARN_ON (int) ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dma_sync_sg_for_cpu (int ,struct scatterlist*,int,int ) ;
 int dma_sync_sg_for_device (int ,struct scatterlist*,int,int ) ;
 int dmaengine_tx_status (struct dma_chan*,int ,struct dma_tx_state*) ;
 int imx_uart_clear_rx_errors (struct imx_port*) ;
 unsigned int sg_dma_len (struct scatterlist*) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 unsigned int tty_insert_flip_string (struct tty_port*,scalar_t__,unsigned int) ;

__attribute__((used)) static void imx_uart_dma_rx_callback(void *data)
{
 struct imx_port *sport = data;
 struct dma_chan *chan = sport->dma_chan_rx;
 struct scatterlist *sgl = &sport->rx_sgl;
 struct tty_port *port = &sport->port.state->port;
 struct dma_tx_state state;
 struct circ_buf *rx_ring = &sport->rx_ring;
 enum dma_status status;
 unsigned int w_bytes = 0;
 unsigned int r_bytes;
 unsigned int bd_size;

 status = dmaengine_tx_status(chan, sport->rx_cookie, &state);

 if (status == DMA_ERROR) {
  imx_uart_clear_rx_errors(sport);
  return;
 }

 if (!(sport->port.ignore_status_mask & URXD_DUMMY_READ)) {
  rx_ring->head = sg_dma_len(sgl) - state.residue;


  bd_size = sg_dma_len(sgl) / sport->rx_periods;
  rx_ring->tail = ((rx_ring->head-1) / bd_size) * bd_size;

  if (rx_ring->head <= sg_dma_len(sgl) &&
      rx_ring->head > rx_ring->tail) {


   r_bytes = rx_ring->head - rx_ring->tail;


   dma_sync_sg_for_cpu(sport->port.dev, sgl, 1,
    DMA_FROM_DEVICE);

   w_bytes = tty_insert_flip_string(port,
    sport->rx_buf + rx_ring->tail, r_bytes);


   dma_sync_sg_for_device(sport->port.dev, sgl, 1,
    DMA_FROM_DEVICE);

   if (w_bytes != r_bytes)
    sport->port.icount.buf_overrun++;

   sport->port.icount.rx += w_bytes;
  } else {
   WARN_ON(rx_ring->head > sg_dma_len(sgl));
   WARN_ON(rx_ring->head <= rx_ring->tail);
  }
 }

 if (w_bytes) {
  tty_flip_buffer_push(port);
  dev_dbg(sport->port.dev, "We get %d bytes.\n", w_bytes);
 }
}
