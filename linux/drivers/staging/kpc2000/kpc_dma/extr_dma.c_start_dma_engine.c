
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpc_dma_device {int desc_pool_first; int desc_pool_last; int desc_completed; int desc_next; } ;


 int ClearEngineCompletePtr (struct kpc_dma_device*) ;
 int ENG_CTL_DMA_ENABLE ;
 int ENG_CTL_IRQ_ENABLE ;
 int SetEngineNextPtr (struct kpc_dma_device*,int ) ;
 int SetEngineSWPtr (struct kpc_dma_device*,int ) ;
 int WriteEngineControl (struct kpc_dma_device*,int) ;

void start_dma_engine(struct kpc_dma_device *eng)
{
 eng->desc_next = eng->desc_pool_first;
 eng->desc_completed = eng->desc_pool_last;


 SetEngineNextPtr(eng, eng->desc_pool_first);
 SetEngineSWPtr(eng, eng->desc_pool_first);
 ClearEngineCompletePtr(eng);

 WriteEngineControl(eng, ENG_CTL_DMA_ENABLE | ENG_CTL_IRQ_ENABLE);
}
