
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_dev {void* prp_page_pool; void* prp_small_pool; int dev; } ;


 int ENOMEM ;
 int PAGE_SIZE ;
 void* dma_pool_create (char*,int ,int,int,int ) ;
 int dma_pool_destroy (void*) ;

__attribute__((used)) static int nvme_setup_prp_pools(struct nvme_dev *dev)
{
 dev->prp_page_pool = dma_pool_create("prp list page", dev->dev,
      PAGE_SIZE, PAGE_SIZE, 0);
 if (!dev->prp_page_pool)
  return -ENOMEM;


 dev->prp_small_pool = dma_pool_create("prp list 256", dev->dev,
      256, 256, 0);
 if (!dev->prp_small_pool) {
  dma_pool_destroy(dev->prp_page_pool);
  return -ENOMEM;
 }
 return 0;
}
