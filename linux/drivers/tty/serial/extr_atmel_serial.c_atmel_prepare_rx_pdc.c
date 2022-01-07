
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;
struct atmel_uart_port {struct atmel_dma_buffer* pdc_rx; scalar_t__ pdc_rx_idx; scalar_t__ use_pdc_rx; } ;
struct atmel_dma_buffer {int dma_addr; scalar_t__ ofs; int dma_size; int * buf; } ;


 int ATMEL_PDC_RCR ;
 int ATMEL_PDC_RNCR ;
 int ATMEL_PDC_RNPR ;
 int ATMEL_PDC_RPR ;
 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PDC_BUFFER_SIZE ;
 int atmel_uart_writel (struct uart_port*,int ,int ) ;
 int dma_map_single (int ,int *,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static int atmel_prepare_rx_pdc(struct uart_port *port)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);
 int i;

 for (i = 0; i < 2; i++) {
  struct atmel_dma_buffer *pdc = &atmel_port->pdc_rx[i];

  pdc->buf = kmalloc(PDC_BUFFER_SIZE, GFP_KERNEL);
  if (pdc->buf == ((void*)0)) {
   if (i != 0) {
    dma_unmap_single(port->dev,
     atmel_port->pdc_rx[0].dma_addr,
     PDC_BUFFER_SIZE,
     DMA_FROM_DEVICE);
    kfree(atmel_port->pdc_rx[0].buf);
   }
   atmel_port->use_pdc_rx = 0;
   return -ENOMEM;
  }
  pdc->dma_addr = dma_map_single(port->dev,
      pdc->buf,
      PDC_BUFFER_SIZE,
      DMA_FROM_DEVICE);
  pdc->dma_size = PDC_BUFFER_SIZE;
  pdc->ofs = 0;
 }

 atmel_port->pdc_rx_idx = 0;

 atmel_uart_writel(port, ATMEL_PDC_RPR, atmel_port->pdc_rx[0].dma_addr);
 atmel_uart_writel(port, ATMEL_PDC_RCR, PDC_BUFFER_SIZE);

 atmel_uart_writel(port, ATMEL_PDC_RNPR,
     atmel_port->pdc_rx[1].dma_addr);
 atmel_uart_writel(port, ATMEL_PDC_RNCR, PDC_BUFFER_SIZE);

 return 0;
}
