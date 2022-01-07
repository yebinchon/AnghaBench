
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dev; TYPE_1__* state; } ;
struct circ_buf {int buf; } ;
struct atmel_dma_buffer {scalar_t__ ofs; int dma_size; int buf; int dma_addr; } ;
struct atmel_uart_port {struct atmel_dma_buffer pdc_tx; } ;
struct TYPE_2__ {struct circ_buf xmit; } ;


 int DMA_TO_DEVICE ;
 int UART_XMIT_SIZE ;
 int dma_map_single (int ,int ,int ,int ) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static int atmel_prepare_tx_pdc(struct uart_port *port)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);
 struct atmel_dma_buffer *pdc = &atmel_port->pdc_tx;
 struct circ_buf *xmit = &port->state->xmit;

 pdc->buf = xmit->buf;
 pdc->dma_addr = dma_map_single(port->dev,
     pdc->buf,
     UART_XMIT_SIZE,
     DMA_TO_DEVICE);
 pdc->dma_size = UART_XMIT_SIZE;
 pdc->ofs = 0;

 return 0;
}
