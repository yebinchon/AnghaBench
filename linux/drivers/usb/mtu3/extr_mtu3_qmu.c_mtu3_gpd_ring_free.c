
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtu3_gpd_ring {int dma; int start; } ;
struct mtu3_ep {TYPE_1__* mtu; struct mtu3_gpd_ring gpd_ring; } ;
struct TYPE_2__ {int qmu_gpd_pool; } ;


 int dma_pool_free (int ,int ,int ) ;
 int memset (struct mtu3_gpd_ring*,int ,int) ;

void mtu3_gpd_ring_free(struct mtu3_ep *mep)
{
 struct mtu3_gpd_ring *ring = &mep->gpd_ring;

 dma_pool_free(mep->mtu->qmu_gpd_pool,
   ring->start, ring->dma);
 memset(ring, 0, sizeof(*ring));
}
