
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_fifo {int rx_slave; void* rx_chan; int tx_slave; void* tx_chan; } ;
typedef int dma_cap_mask_t ;


 int DMA_SLAVE ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 void* dma_request_channel (int ,int ,int *) ;
 int usbhsf_dma_filter ;

__attribute__((used)) static void usbhsf_dma_init_pdev(struct usbhs_fifo *fifo)
{
 dma_cap_mask_t mask;

 dma_cap_zero(mask);
 dma_cap_set(DMA_SLAVE, mask);
 fifo->tx_chan = dma_request_channel(mask, usbhsf_dma_filter,
         &fifo->tx_slave);

 dma_cap_zero(mask);
 dma_cap_set(DMA_SLAVE, mask);
 fifo->rx_chan = dma_request_channel(mask, usbhsf_dma_filter,
         &fifo->rx_slave);
}
