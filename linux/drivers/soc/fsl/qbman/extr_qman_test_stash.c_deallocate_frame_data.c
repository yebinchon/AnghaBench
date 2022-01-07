
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;


 int DMA_BIDIRECTIONAL ;
 int HP_NUM_WORDS ;
 int __frame_ptr ;
 int dma_unmap_single (int ,int ,int,int ) ;
 int frame_dma ;
 int kfree (int ) ;
 TYPE_1__* pcfg ;

__attribute__((used)) static void deallocate_frame_data(void)
{
 dma_unmap_single(pcfg->dev, frame_dma, 4 * HP_NUM_WORDS,
    DMA_BIDIRECTIONAL);
 kfree(__frame_ptr);
}
