
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;
struct atmel_uart_port {struct atmel_dma_buffer* pdc_rx; } ;
struct atmel_dma_buffer {int buf; int dma_size; int dma_addr; } ;


 int DMA_FROM_DEVICE ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int kfree (int ) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static void atmel_release_rx_pdc(struct uart_port *port)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);
 int i;

 for (i = 0; i < 2; i++) {
  struct atmel_dma_buffer *pdc = &atmel_port->pdc_rx[i];

  dma_unmap_single(port->dev,
     pdc->dma_addr,
     pdc->dma_size,
     DMA_FROM_DEVICE);
  kfree(pdc->buf);
 }
}
