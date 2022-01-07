
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct uart_port {int dev; TYPE_1__* state; } ;
struct msm_dma {unsigned int count; int dir; int phys; int chan; int enable_bit; int cookie; TYPE_2__* desc; } ;
struct msm_port {scalar_t__ is_uartdm; int imr; struct msm_dma tx_dma; struct uart_port uart; } ;
struct circ_buf {size_t tail; int * buf; } ;
struct TYPE_5__ {struct msm_port* callback_param; int callback; } ;
struct TYPE_4__ {struct circ_buf xmit; } ;


 int DMA_MEM_TO_DEV ;
 int DMA_PREP_FENCE ;
 int DMA_PREP_INTERRUPT ;
 int EIO ;
 scalar_t__ UARTDM_1P3 ;
 scalar_t__ UARTDM_1P4 ;
 int UARTDM_DMEN ;
 int UART_IMR ;
 int UART_IMR_TXLEV ;
 int dma_async_issue_pending (int ) ;
 int dma_map_single (int ,void*,unsigned int,int ) ;
 int dma_mapping_error (int ,int ) ;
 int dma_submit_error (int ) ;
 int dma_unmap_single (int ,int ,unsigned int,int ) ;
 TYPE_2__* dmaengine_prep_slave_single (int ,int ,unsigned int,int ,int) ;
 int dmaengine_submit (TYPE_2__*) ;
 int msm_complete_tx_dma ;
 int msm_read (struct uart_port*,int ) ;
 int msm_reset_dm_count (struct uart_port*,unsigned int) ;
 int msm_write (struct uart_port*,int ,int ) ;

__attribute__((used)) static int msm_handle_tx_dma(struct msm_port *msm_port, unsigned int count)
{
 struct circ_buf *xmit = &msm_port->uart.state->xmit;
 struct uart_port *port = &msm_port->uart;
 struct msm_dma *dma = &msm_port->tx_dma;
 void *cpu_addr;
 int ret;
 u32 val;

 cpu_addr = &xmit->buf[xmit->tail];

 dma->phys = dma_map_single(port->dev, cpu_addr, count, dma->dir);
 ret = dma_mapping_error(port->dev, dma->phys);
 if (ret)
  return ret;

 dma->desc = dmaengine_prep_slave_single(dma->chan, dma->phys,
      count, DMA_MEM_TO_DEV,
      DMA_PREP_INTERRUPT |
      DMA_PREP_FENCE);
 if (!dma->desc) {
  ret = -EIO;
  goto unmap;
 }

 dma->desc->callback = msm_complete_tx_dma;
 dma->desc->callback_param = msm_port;

 dma->cookie = dmaengine_submit(dma->desc);
 ret = dma_submit_error(dma->cookie);
 if (ret)
  goto unmap;





 msm_port->imr &= ~UART_IMR_TXLEV;
 msm_write(port, msm_port->imr, UART_IMR);

 dma->count = count;

 val = msm_read(port, UARTDM_DMEN);
 val |= dma->enable_bit;

 if (msm_port->is_uartdm < UARTDM_1P4)
  msm_write(port, val, UARTDM_DMEN);

 msm_reset_dm_count(port, count);

 if (msm_port->is_uartdm > UARTDM_1P3)
  msm_write(port, val, UARTDM_DMEN);

 dma_async_issue_pending(dma->chan);
 return 0;
unmap:
 dma_unmap_single(port->dev, dma->phys, count, dma->dir);
 return ret;
}
