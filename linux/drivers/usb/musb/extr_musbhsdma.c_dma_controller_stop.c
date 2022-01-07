
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct musb_dma_controller {int used_channels; TYPE_1__* channel; struct musb* private_data; } ;
struct musb {int controller; } ;
struct dma_channel {int dummy; } ;
struct TYPE_2__ {struct dma_channel channel; } ;


 int MUSB_HSDMA_CHANNELS ;
 int dev_err (int ,char*) ;
 int dma_channel_release (struct dma_channel*) ;

__attribute__((used)) static void dma_controller_stop(struct musb_dma_controller *controller)
{
 struct musb *musb = controller->private_data;
 struct dma_channel *channel;
 u8 bit;

 if (controller->used_channels != 0) {
  dev_err(musb->controller,
   "Stopping DMA controller while channel active\n");

  for (bit = 0; bit < MUSB_HSDMA_CHANNELS; bit++) {
   if (controller->used_channels & (1 << bit)) {
    channel = &controller->channel[bit].channel;
    dma_channel_release(channel);

    if (!controller->used_channels)
     break;
   }
  }
 }
}
