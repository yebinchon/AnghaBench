
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udc {int data_requests; int stp_requests; TYPE_1__* ep; } ;
struct TYPE_2__ {int td_stp_dma; int td_stp; int td_phys; int td; } ;


 size_t UDC_EP0OUT_IX ;
 int dma_pool_destroy (int ) ;
 int dma_pool_free (int ,int ,int ) ;

void free_dma_pools(struct udc *dev)
{
 dma_pool_free(dev->stp_requests, dev->ep[UDC_EP0OUT_IX].td,
        dev->ep[UDC_EP0OUT_IX].td_phys);
 dma_pool_free(dev->stp_requests, dev->ep[UDC_EP0OUT_IX].td_stp,
        dev->ep[UDC_EP0OUT_IX].td_stp_dma);
 dma_pool_destroy(dev->stp_requests);
 dma_pool_destroy(dev->data_requests);
}
