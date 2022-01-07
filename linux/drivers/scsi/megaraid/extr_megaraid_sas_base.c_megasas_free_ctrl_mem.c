
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct megasas_instance {scalar_t__ adapter_type; int consumer_h; scalar_t__ consumer; TYPE_1__* pdev; int producer_h; scalar_t__ producer; int reply_map; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ MFI_SERIES ;
 int dma_free_coherent (int *,int,scalar_t__,int ) ;
 int kfree (int ) ;
 int megasas_free_fusion_context (struct megasas_instance*) ;

__attribute__((used)) static inline void megasas_free_ctrl_mem(struct megasas_instance *instance)
{
 kfree(instance->reply_map);
 if (instance->adapter_type == MFI_SERIES) {
  if (instance->producer)
   dma_free_coherent(&instance->pdev->dev, sizeof(u32),
         instance->producer,
         instance->producer_h);
  if (instance->consumer)
   dma_free_coherent(&instance->pdev->dev, sizeof(u32),
         instance->consumer,
         instance->consumer_h);
 } else {
  megasas_free_fusion_context(instance);
 }
}
