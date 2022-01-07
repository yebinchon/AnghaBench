
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {unsigned int tx; } ;
struct uart_port {int lock; TYPE_2__ icount; int dev; TYPE_1__* state; } ;
struct msm_dma {unsigned int count; int enable_bit; int dir; int phys; int cookie; int chan; } ;
struct msm_port {scalar_t__ is_uartdm; int imr; struct msm_dma tx_dma; struct uart_port uart; } ;
struct dma_tx_state {unsigned int residue; } ;
struct circ_buf {unsigned int tail; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 scalar_t__ UARTDM_1P3 ;
 int UARTDM_DMEN ;
 int UART_CR ;
 int UART_CR_CMD_RESET_TX ;
 int UART_CR_TX_ENABLE ;
 int UART_IMR ;
 int UART_IMR_TXLEV ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int dma_unmap_single (int ,int ,unsigned int,int ) ;
 int dmaengine_tx_status (int ,int ,struct dma_tx_state*) ;
 int msm_handle_tx (struct uart_port*) ;
 int msm_read (struct uart_port*,int ) ;
 int msm_write (struct uart_port*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 int uart_write_wakeup (struct uart_port*) ;

__attribute__((used)) static void msm_complete_tx_dma(void *args)
{
 struct msm_port *msm_port = args;
 struct uart_port *port = &msm_port->uart;
 struct circ_buf *xmit = &port->state->xmit;
 struct msm_dma *dma = &msm_port->tx_dma;
 struct dma_tx_state state;
 enum dma_status status;
 unsigned long flags;
 unsigned int count;
 u32 val;

 spin_lock_irqsave(&port->lock, flags);


 if (!dma->count)
  goto done;

 status = dmaengine_tx_status(dma->chan, dma->cookie, &state);

 dma_unmap_single(port->dev, dma->phys, dma->count, dma->dir);

 val = msm_read(port, UARTDM_DMEN);
 val &= ~dma->enable_bit;
 msm_write(port, val, UARTDM_DMEN);

 if (msm_port->is_uartdm > UARTDM_1P3) {
  msm_write(port, UART_CR_CMD_RESET_TX, UART_CR);
  msm_write(port, UART_CR_TX_ENABLE, UART_CR);
 }

 count = dma->count - state.residue;
 port->icount.tx += count;
 dma->count = 0;

 xmit->tail += count;
 xmit->tail &= UART_XMIT_SIZE - 1;


 msm_port->imr |= UART_IMR_TXLEV;
 msm_write(port, msm_port->imr, UART_IMR);

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);

 msm_handle_tx(port);
done:
 spin_unlock_irqrestore(&port->lock, flags);
}
