
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct megasas_instance {scalar_t__* consumer; scalar_t__* producer; TYPE_1__* pdev; int consumer_h; int producer_h; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 void* dma_alloc_coherent (int *,int,int *,int ) ;

__attribute__((used)) static inline int megasas_alloc_mfi_ctrl_mem(struct megasas_instance *instance)
{
 instance->producer = dma_alloc_coherent(&instance->pdev->dev,
   sizeof(u32), &instance->producer_h, GFP_KERNEL);
 instance->consumer = dma_alloc_coherent(&instance->pdev->dev,
   sizeof(u32), &instance->consumer_h, GFP_KERNEL);

 if (!instance->producer || !instance->consumer) {
  dev_err(&instance->pdev->dev,
   "Failed to allocate memory for producer, consumer\n");
  return -1;
 }

 *instance->producer = 0;
 *instance->consumer = 0;
 return 0;
}
