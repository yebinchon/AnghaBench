
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
struct dwc2_qh {scalar_t__ ep_type; scalar_t__ dev_speed; int * n_bytes; int * desc_list; int desc_list_sz; int desc_list_dma; } ;
struct dwc2_hsotg {int dev; struct kmem_cache* desc_gen_cache; struct kmem_cache* desc_hsisoc_cache; } ;


 int DMA_FROM_DEVICE ;
 scalar_t__ USB_ENDPOINT_XFER_ISOC ;
 scalar_t__ USB_SPEED_HIGH ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int kfree (int *) ;
 int kmem_cache_free (struct kmem_cache*,int *) ;

__attribute__((used)) static void dwc2_desc_list_free(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
{
 struct kmem_cache *desc_cache;

 if (qh->ep_type == USB_ENDPOINT_XFER_ISOC &&
     qh->dev_speed == USB_SPEED_HIGH)
  desc_cache = hsotg->desc_hsisoc_cache;
 else
  desc_cache = hsotg->desc_gen_cache;

 if (qh->desc_list) {
  dma_unmap_single(hsotg->dev, qh->desc_list_dma,
     qh->desc_list_sz, DMA_FROM_DEVICE);
  kmem_cache_free(desc_cache, qh->desc_list);
  qh->desc_list = ((void*)0);
 }

 kfree(qh->n_bytes);
 qh->n_bytes = ((void*)0);
}
