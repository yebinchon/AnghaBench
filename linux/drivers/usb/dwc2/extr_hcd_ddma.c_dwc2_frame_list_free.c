
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {int lock; int * frame_list; int frame_list_sz; int frame_list_dma; int dev; } ;


 int DMA_FROM_DEVICE ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int kfree (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dwc2_frame_list_free(struct dwc2_hsotg *hsotg)
{
 unsigned long flags;

 spin_lock_irqsave(&hsotg->lock, flags);

 if (!hsotg->frame_list) {
  spin_unlock_irqrestore(&hsotg->lock, flags);
  return;
 }

 dma_unmap_single(hsotg->dev, hsotg->frame_list_dma,
    hsotg->frame_list_sz, DMA_FROM_DEVICE);

 kfree(hsotg->frame_list);
 hsotg->frame_list = ((void*)0);

 spin_unlock_irqrestore(&hsotg->lock, flags);
}
