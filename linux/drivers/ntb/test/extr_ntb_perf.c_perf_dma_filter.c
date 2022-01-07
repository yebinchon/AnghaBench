
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_ctx {TYPE_1__* ntb; } ;
struct dma_chan {TYPE_2__* device; } ;
struct TYPE_4__ {int * dev; } ;
struct TYPE_3__ {int dev; } ;


 int NUMA_NO_NODE ;
 int dev_to_node (int *) ;

__attribute__((used)) static bool perf_dma_filter(struct dma_chan *chan, void *data)
{
 struct perf_ctx *perf = data;
 int node;

 node = dev_to_node(&perf->ntb->dev);

 return node == NUMA_NO_NODE || node == dev_to_node(chan->device->dev);
}
