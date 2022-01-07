
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pic32_sqi {int ring; int bd_dma; int bd; TYPE_1__* master; } ;
struct buf_desc {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int PESQI_BD_COUNT ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int kfree (int ) ;

__attribute__((used)) static void ring_desc_ring_free(struct pic32_sqi *sqi)
{
 dma_free_coherent(&sqi->master->dev,
     sizeof(struct buf_desc) * PESQI_BD_COUNT,
     sqi->bd, sqi->bd_dma);
 kfree(sqi->ring);
}
