
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct AdapterControlBlock {int adapter_type; int dma_coherent_handle2; int dma_coherent2; int ioqueue_size; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;





 int dma_free_coherent (int *,int ,int ,int ) ;

__attribute__((used)) static void arcmsr_free_io_queue(struct AdapterControlBlock *acb)
{
 switch (acb->adapter_type) {
 case 130:
 case 129:
 case 128: {
  dma_free_coherent(&acb->pdev->dev, acb->ioqueue_size,
   acb->dma_coherent2, acb->dma_coherent_handle2);
  break;
 }
 }
}
