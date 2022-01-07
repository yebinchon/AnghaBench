
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kpc_dma_device {TYPE_1__* pldev; } ;
struct TYPE_2__ {int dev; } ;


 int ENG_CTL_DESC_ALIGN_ERR ;
 int ENG_CTL_DESC_CHAIN_END ;
 int ENG_CTL_DESC_COMPLETE ;
 int ENG_CTL_DESC_FETCH_ERR ;
 int ENG_CTL_DMA_RESET ;
 int ENG_CTL_DMA_RESET_REQUEST ;
 int ENG_CTL_DMA_RUNNING ;
 int ENG_CTL_DMA_WAITING_PERSIST ;
 int ENG_CTL_IRQ_ACTIVE ;
 int ENG_CTL_SW_ABORT_ERR ;
 int GetEngineControl (struct kpc_dma_device*) ;
 int HZ ;
 int SetClearEngineControl (struct kpc_dma_device*,int,int ) ;
 int WriteEngineControl (struct kpc_dma_device*,int) ;
 int dev_crit (int *,char*) ;
 int jiffies ;
 scalar_t__ time_after (int,unsigned long) ;

void stop_dma_engine(struct kpc_dma_device *eng)
{
 unsigned long timeout;


 WriteEngineControl(eng, 0);


 timeout = jiffies + (HZ / 2);
 while (GetEngineControl(eng) & ENG_CTL_DMA_RUNNING) {
  if (time_after(jiffies, timeout)) {
   dev_crit(&eng->pldev->dev, "DMA_RUNNING still asserted!\n");
   break;
  }
 }


 WriteEngineControl(eng, ENG_CTL_DMA_RESET_REQUEST);


 timeout = jiffies + (HZ / 2);
 while (GetEngineControl(eng) & (ENG_CTL_DMA_RUNNING | ENG_CTL_DMA_RESET_REQUEST)) {
  if (time_after(jiffies, timeout)) {
   dev_crit(&eng->pldev->dev, "ENG_CTL_DMA_RESET_REQUEST still asserted!\n");
   break;
  }
 }


 WriteEngineControl(eng, ENG_CTL_DMA_RESET);


 timeout = jiffies + (HZ / 2);
 while (GetEngineControl(eng) & ENG_CTL_DMA_RESET) {
  if (time_after(jiffies, timeout)) {
   dev_crit(&eng->pldev->dev, "DMA_RESET still asserted!\n");
   break;
  }
 }


 SetClearEngineControl(eng, (ENG_CTL_IRQ_ACTIVE | ENG_CTL_DESC_COMPLETE | ENG_CTL_DESC_ALIGN_ERR | ENG_CTL_DESC_FETCH_ERR | ENG_CTL_SW_ABORT_ERR | ENG_CTL_DESC_CHAIN_END | ENG_CTL_DMA_WAITING_PERSIST), 0);




 WriteEngineControl(eng, 0);
}
