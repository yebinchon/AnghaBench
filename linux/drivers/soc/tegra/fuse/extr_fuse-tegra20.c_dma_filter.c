
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_chan {TYPE_2__* device; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {struct device_node* of_node; } ;


 int of_device_is_compatible (struct device_node*,char*) ;

__attribute__((used)) static bool dma_filter(struct dma_chan *chan, void *filter_param)
{
 struct device_node *np = chan->device->dev->of_node;

 return of_device_is_compatible(np, "nvidia,tegra20-apbdma");
}
