
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_dev {int prp_small_pool; int prp_page_pool; } ;


 int dma_pool_destroy (int ) ;

__attribute__((used)) static void nvme_release_prp_pools(struct nvme_dev *dev)
{
 dma_pool_destroy(dev->prp_page_pool);
 dma_pool_destroy(dev->prp_small_pool);
}
