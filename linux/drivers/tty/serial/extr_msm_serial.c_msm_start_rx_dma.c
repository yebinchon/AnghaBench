
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct uart_port {int dev; } ;
struct msm_dma {int count; int enable_bit; int dir; int phys; int chan; int cookie; TYPE_1__* desc; int virt; } ;
struct msm_port {int imr; scalar_t__ is_uartdm; struct uart_port uart; struct msm_dma rx_dma; } ;
struct TYPE_3__ {struct msm_port* callback_param; int callback; } ;


 int DMA_DEV_TO_MEM ;
 int DMA_PREP_INTERRUPT ;
 scalar_t__ UARTDM_1P3 ;
 scalar_t__ UARTDM_1P4 ;
 int UARTDM_DMEN ;
 int UARTDM_DMRX ;
 int UARTDM_RX_SIZE ;
 int UART_CR ;
 int UART_CR_CMD_RESET_STALE_INT ;
 int UART_CR_CMD_STALE_EVENT_ENABLE ;
 int UART_IMR ;
 int UART_IMR_RXLEV ;
 int UART_IMR_RXSTALE ;
 int dma_async_issue_pending (int ) ;
 int dma_map_single (int ,int ,int,int ) ;
 int dma_mapping_error (int ,int ) ;
 int dma_submit_error (int ) ;
 int dma_unmap_single (int ,int ,int,int ) ;
 TYPE_1__* dmaengine_prep_slave_single (int ,int ,int,int ,int ) ;
 int dmaengine_submit (TYPE_1__*) ;
 int msm_complete_rx_dma ;
 int msm_read (struct uart_port*,int ) ;
 int msm_write (struct uart_port*,int,int ) ;

__attribute__((used)) static void msm_start_rx_dma(struct msm_port *msm_port)
{
 struct msm_dma *dma = &msm_port->rx_dma;
 struct uart_port *uart = &msm_port->uart;
 u32 val;
 int ret;

 if (!dma->chan)
  return;

 dma->phys = dma_map_single(uart->dev, dma->virt,
       UARTDM_RX_SIZE, dma->dir);
 ret = dma_mapping_error(uart->dev, dma->phys);
 if (ret)
  return;

 dma->desc = dmaengine_prep_slave_single(dma->chan, dma->phys,
      UARTDM_RX_SIZE, DMA_DEV_TO_MEM,
      DMA_PREP_INTERRUPT);
 if (!dma->desc)
  goto unmap;

 dma->desc->callback = msm_complete_rx_dma;
 dma->desc->callback_param = msm_port;

 dma->cookie = dmaengine_submit(dma->desc);
 ret = dma_submit_error(dma->cookie);
 if (ret)
  goto unmap;




 msm_port->imr &= ~(UART_IMR_RXLEV | UART_IMR_RXSTALE);





 if (msm_port->is_uartdm < UARTDM_1P4)
  msm_port->imr |= UART_IMR_RXSTALE;

 msm_write(uart, msm_port->imr, UART_IMR);

 dma->count = UARTDM_RX_SIZE;

 dma_async_issue_pending(dma->chan);

 msm_write(uart, UART_CR_CMD_RESET_STALE_INT, UART_CR);
 msm_write(uart, UART_CR_CMD_STALE_EVENT_ENABLE, UART_CR);

 val = msm_read(uart, UARTDM_DMEN);
 val |= dma->enable_bit;

 if (msm_port->is_uartdm < UARTDM_1P4)
  msm_write(uart, val, UARTDM_DMEN);

 msm_write(uart, UARTDM_RX_SIZE, UARTDM_DMRX);

 if (msm_port->is_uartdm > UARTDM_1P3)
  msm_write(uart, val, UARTDM_DMEN);

 return;
unmap:
 dma_unmap_single(uart->dev, dma->phys, UARTDM_RX_SIZE, dma->dir);
}
