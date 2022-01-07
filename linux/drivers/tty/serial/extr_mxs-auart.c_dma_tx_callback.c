
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* state; } ;
struct mxs_auart_port {TYPE_2__ port; int flags; int tx_sgl; int dev; } ;
struct circ_buf {int dummy; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 int DMA_TO_DEVICE ;
 int MXS_AUART_DMA_TX_SYNC ;
 scalar_t__ WAKEUP_CHARS ;
 int clear_bit (int ,int *) ;
 int dma_unmap_sg (int ,int *,int,int ) ;
 int mxs_auart_tx_chars (struct mxs_auart_port*) ;
 int smp_mb__after_atomic () ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 int uart_write_wakeup (TYPE_2__*) ;

__attribute__((used)) static void dma_tx_callback(void *param)
{
 struct mxs_auart_port *s = param;
 struct circ_buf *xmit = &s->port.state->xmit;

 dma_unmap_sg(s->dev, &s->tx_sgl, 1, DMA_TO_DEVICE);


 clear_bit(MXS_AUART_DMA_TX_SYNC, &s->flags);
 smp_mb__after_atomic();


 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(&s->port);

 mxs_auart_tx_chars(s);
}
