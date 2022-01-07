
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dim2_hdm {TYPE_1__* hch; } ;
struct TYPE_2__ {int ch; int is_initialized; } ;


 int DMA_CHANNELS ;
 int dim_lock ;
 int dim_service_channel (int *) ;
 int service_done_flag (struct dim2_hdm*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int try_start_dim_transfer (TYPE_1__*) ;

__attribute__((used)) static void dim2_tasklet_fn(unsigned long data)
{
 struct dim2_hdm *dev = (struct dim2_hdm *)data;
 unsigned long flags;
 int ch_idx;

 for (ch_idx = 0; ch_idx < DMA_CHANNELS; ch_idx++) {
  if (!dev->hch[ch_idx].is_initialized)
   continue;

  spin_lock_irqsave(&dim_lock, flags);
  dim_service_channel(&dev->hch[ch_idx].ch);
  spin_unlock_irqrestore(&dim_lock, flags);

  service_done_flag(dev, ch_idx);
  while (!try_start_dim_transfer(dev->hch + ch_idx))
   continue;
 }
}
