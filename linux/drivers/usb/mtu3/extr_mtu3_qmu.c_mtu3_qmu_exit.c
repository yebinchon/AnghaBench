
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtu3 {int qmu_gpd_pool; } ;


 int dma_pool_destroy (int ) ;

void mtu3_qmu_exit(struct mtu3 *mtu)
{
 dma_pool_destroy(mtu->qmu_gpd_pool);
}
