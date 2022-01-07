
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdma_dmaengine_chan {int dummy; } ;
struct gdma_dma_dev {TYPE_1__* data; } ;
struct TYPE_2__ {int (* start_transfer ) (struct gdma_dmaengine_chan*) ;} ;


 int stub1 (struct gdma_dmaengine_chan*) ;

__attribute__((used)) static inline int gdma_start_transfer(struct gdma_dma_dev *dma_dev,
          struct gdma_dmaengine_chan *chan)
{
 return dma_dev->data->start_transfer(chan);
}
