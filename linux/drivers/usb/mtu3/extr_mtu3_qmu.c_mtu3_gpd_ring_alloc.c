
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qmu_gpd {int dummy; } ;
struct mtu3_gpd_ring {int dma; } ;
struct mtu3_ep {TYPE_1__* mtu; struct mtu3_gpd_ring gpd_ring; } ;
struct TYPE_2__ {int qmu_gpd_pool; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct qmu_gpd* dma_pool_zalloc (int ,int ,int *) ;
 int gpd_ring_init (struct mtu3_gpd_ring*,struct qmu_gpd*) ;

int mtu3_gpd_ring_alloc(struct mtu3_ep *mep)
{
 struct qmu_gpd *gpd;
 struct mtu3_gpd_ring *ring = &mep->gpd_ring;


 gpd = dma_pool_zalloc(mep->mtu->qmu_gpd_pool, GFP_ATOMIC, &ring->dma);
 if (gpd == ((void*)0))
  return -ENOMEM;

 gpd_ring_init(ring, gpd);

 return 0;
}
