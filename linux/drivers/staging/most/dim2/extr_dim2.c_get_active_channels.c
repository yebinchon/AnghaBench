
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dim_channel {int dummy; } ;
struct dim2_hdm {TYPE_1__* hch; } ;
struct TYPE_2__ {struct dim_channel ch; scalar_t__ is_initialized; } ;


 int DMA_CHANNELS ;

__attribute__((used)) static struct dim_channel **get_active_channels(struct dim2_hdm *dev,
      struct dim_channel **buffer)
{
 int idx = 0;
 int ch_idx;

 for (ch_idx = 0; ch_idx < DMA_CHANNELS; ch_idx++) {
  if (dev->hch[ch_idx].is_initialized)
   buffer[idx++] = &dev->hch[ch_idx].ch;
 }
 buffer[idx++] = ((void*)0);

 return buffer;
}
