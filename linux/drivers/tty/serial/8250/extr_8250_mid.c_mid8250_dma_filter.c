
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hsu_dma_slave {scalar_t__ dma_dev; scalar_t__ chan_id; } ;
struct dma_chan {scalar_t__ chan_id; struct hsu_dma_slave* private; TYPE_1__* device; } ;
struct TYPE_2__ {scalar_t__ dev; } ;



__attribute__((used)) static bool mid8250_dma_filter(struct dma_chan *chan, void *param)
{
 struct hsu_dma_slave *s = param;

 if (s->dma_dev != chan->device->dev || s->chan_id != chan->chan_id)
  return 0;

 chan->private = s;
 return 1;
}
