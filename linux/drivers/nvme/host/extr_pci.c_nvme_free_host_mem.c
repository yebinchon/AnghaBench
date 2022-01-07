
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_host_mem_buf_desc {int addr; int size; } ;
struct TYPE_2__ {size_t page_size; } ;
struct nvme_dev {int nr_host_mem_descs; struct nvme_host_mem_buf_desc* host_mem_descs; int host_mem_descs_dma; int dev; int * host_mem_desc_bufs; TYPE_1__ ctrl; } ;


 int DMA_ATTR_NO_KERNEL_MAPPING ;
 int DMA_ATTR_NO_WARN ;
 int dma_free_attrs (int ,size_t,int ,int ,int) ;
 int dma_free_coherent (int ,int,struct nvme_host_mem_buf_desc*,int ) ;
 int kfree (int *) ;
 size_t le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static void nvme_free_host_mem(struct nvme_dev *dev)
{
 int i;

 for (i = 0; i < dev->nr_host_mem_descs; i++) {
  struct nvme_host_mem_buf_desc *desc = &dev->host_mem_descs[i];
  size_t size = le32_to_cpu(desc->size) * dev->ctrl.page_size;

  dma_free_attrs(dev->dev, size, dev->host_mem_desc_bufs[i],
          le64_to_cpu(desc->addr),
          DMA_ATTR_NO_KERNEL_MAPPING | DMA_ATTR_NO_WARN);
 }

 kfree(dev->host_mem_desc_bufs);
 dev->host_mem_desc_bufs = ((void*)0);
 dma_free_coherent(dev->dev,
   dev->nr_host_mem_descs * sizeof(*dev->host_mem_descs),
   dev->host_mem_descs, dev->host_mem_descs_dma);
 dev->host_mem_descs = ((void*)0);
 dev->nr_host_mem_descs = 0;
}
