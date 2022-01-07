
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {TYPE_1__* dev; } ;
struct TYPE_2__ {int device; } ;


 int dev_to_node (int *) ;

__attribute__((used)) static bool ntb_dma_filter_fn(struct dma_chan *chan, void *node)
{
 return dev_to_node(&chan->dev->device) == (int)(unsigned long)node;
}
