
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dw_dma_slave {scalar_t__ dma_dev; } ;
struct dma_chan {struct dw_dma_slave* private; TYPE_1__* device; } ;
struct TYPE_2__ {scalar_t__ dev; } ;



__attribute__((used)) static bool lpss_dma_filter(struct dma_chan *chan, void *param)
{
 struct dw_dma_slave *dws = param;

 if (dws->dma_dev != chan->device->dev)
  return 0;

 chan->private = dws;
 return 1;
}
