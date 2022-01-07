
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kpc_dma_device {int irq_work; TYPE_1__* desc_completed; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ MyDMAAddr; } ;


 int ENG_CTL_IRQ_ACTIVE ;
 scalar_t__ GetEngineCompletePtr (struct kpc_dma_device*) ;
 int GetEngineControl (struct kpc_dma_device*) ;
 int IRQ_HANDLED ;
 int schedule_work (int *) ;

__attribute__((used)) static
irqreturn_t ndd_irq_handler(int irq, void *dev_id)
{
 struct kpc_dma_device *ldev = (struct kpc_dma_device *)dev_id;

 if ((GetEngineControl(ldev) & ENG_CTL_IRQ_ACTIVE) || (ldev->desc_completed->MyDMAAddr != GetEngineCompletePtr(ldev)))
  schedule_work(&ldev->irq_work);

 return IRQ_HANDLED;
}
