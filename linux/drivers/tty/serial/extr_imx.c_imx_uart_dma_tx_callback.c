
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct scatterlist {int dummy; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {int tx; } ;
struct TYPE_9__ {int lock; TYPE_3__ rs485; int dev; TYPE_2__ icount; TYPE_1__* state; } ;
struct imx_port {int tx_bytes; TYPE_4__ port; scalar_t__ dma_is_txing; int dma_tx_nents; struct scatterlist* tx_sgl; } ;
struct circ_buf {int tail; } ;
struct TYPE_6__ {struct circ_buf xmit; } ;


 int DMA_TO_DEVICE ;
 int SER_RS485_ENABLED ;
 int UART_XMIT_SIZE ;
 int UCR1 ;
 int UCR1_TXDMAEN ;
 int UCR4 ;
 int UCR4_TCEN ;
 scalar_t__ WAKEUP_CHARS ;
 int dev_dbg (int ,char*) ;
 int dma_unmap_sg (int ,struct scatterlist*,int ,int ) ;
 int imx_uart_dma_tx (struct imx_port*) ;
 int imx_uart_readl (struct imx_port*,int ) ;
 int imx_uart_writel (struct imx_port*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 int uart_circ_empty (struct circ_buf*) ;
 int uart_tx_stopped (TYPE_4__*) ;
 int uart_write_wakeup (TYPE_4__*) ;

__attribute__((used)) static void imx_uart_dma_tx_callback(void *data)
{
 struct imx_port *sport = data;
 struct scatterlist *sgl = &sport->tx_sgl[0];
 struct circ_buf *xmit = &sport->port.state->xmit;
 unsigned long flags;
 u32 ucr1;

 spin_lock_irqsave(&sport->port.lock, flags);

 dma_unmap_sg(sport->port.dev, sgl, sport->dma_tx_nents, DMA_TO_DEVICE);

 ucr1 = imx_uart_readl(sport, UCR1);
 ucr1 &= ~UCR1_TXDMAEN;
 imx_uart_writel(sport, ucr1, UCR1);


 xmit->tail = (xmit->tail + sport->tx_bytes) & (UART_XMIT_SIZE - 1);
 sport->port.icount.tx += sport->tx_bytes;

 dev_dbg(sport->port.dev, "we finish the TX DMA.\n");

 sport->dma_is_txing = 0;

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(&sport->port);

 if (!uart_circ_empty(xmit) && !uart_tx_stopped(&sport->port))
  imx_uart_dma_tx(sport);
 else if (sport->port.rs485.flags & SER_RS485_ENABLED) {
  u32 ucr4 = imx_uart_readl(sport, UCR4);
  ucr4 |= UCR4_TCEN;
  imx_uart_writel(sport, ucr4, UCR4);
 }

 spin_unlock_irqrestore(&sport->port.lock, flags);
}
