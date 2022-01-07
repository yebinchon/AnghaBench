
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_dev {int * dbbuf_dbs; int dbbuf_dbs_dma_addr; int dev; void* dbbuf_eis; int dbbuf_eis_dma_addr; int db_stride; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* dma_alloc_coherent (int ,unsigned int,int *,int ) ;
 int dma_free_coherent (int ,unsigned int,int *,int ) ;
 unsigned int nvme_dbbuf_size (int ) ;

__attribute__((used)) static int nvme_dbbuf_dma_alloc(struct nvme_dev *dev)
{
 unsigned int mem_size = nvme_dbbuf_size(dev->db_stride);

 if (dev->dbbuf_dbs)
  return 0;

 dev->dbbuf_dbs = dma_alloc_coherent(dev->dev, mem_size,
         &dev->dbbuf_dbs_dma_addr,
         GFP_KERNEL);
 if (!dev->dbbuf_dbs)
  return -ENOMEM;
 dev->dbbuf_eis = dma_alloc_coherent(dev->dev, mem_size,
         &dev->dbbuf_eis_dma_addr,
         GFP_KERNEL);
 if (!dev->dbbuf_eis) {
  dma_free_coherent(dev->dev, mem_size,
      dev->dbbuf_dbs, dev->dbbuf_dbs_dma_addr);
  dev->dbbuf_dbs = ((void*)0);
  return -ENOMEM;
 }

 return 0;
}
