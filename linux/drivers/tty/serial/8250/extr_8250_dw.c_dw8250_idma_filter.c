
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {void* dev; } ;



__attribute__((used)) static bool dw8250_idma_filter(struct dma_chan *chan, void *param)
{
 return param == chan->device->dev;
}
