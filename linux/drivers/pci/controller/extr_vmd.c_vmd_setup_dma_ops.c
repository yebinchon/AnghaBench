
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int domain; } ;
struct dma_domain {struct dma_map_ops* dma_ops; int domain_nr; } ;
struct dma_map_ops {int dummy; } ;
struct vmd_dev {TYPE_2__ sysdata; struct dma_domain dma_domain; struct dma_map_ops dma_ops; TYPE_1__* dev; } ;
struct TYPE_3__ {int dev; } ;


 int ASSIGN_VMD_DMA_OPS (struct dma_map_ops const*,struct dma_map_ops*,int ) ;
 int add_dma_domain (struct dma_domain*) ;
 int alloc ;
 int dma_supported ;
 int free ;
 struct dma_map_ops* get_dma_ops (int *) ;
 int get_required_mask ;
 int get_sgtable ;
 int map_page ;
 int map_sg ;
 int mmap ;
 int sync_sg_for_cpu ;
 int sync_sg_for_device ;
 int sync_single_for_cpu ;
 int sync_single_for_device ;
 int unmap_page ;
 int unmap_sg ;

__attribute__((used)) static void vmd_setup_dma_ops(struct vmd_dev *vmd)
{
 const struct dma_map_ops *source = get_dma_ops(&vmd->dev->dev);
 struct dma_map_ops *dest = &vmd->dma_ops;
 struct dma_domain *domain = &vmd->dma_domain;

 domain->domain_nr = vmd->sysdata.domain;
 domain->dma_ops = dest;

 if (!source)
  return;
 ASSIGN_VMD_DMA_OPS(source, dest, alloc);
 ASSIGN_VMD_DMA_OPS(source, dest, free);
 ASSIGN_VMD_DMA_OPS(source, dest, mmap);
 ASSIGN_VMD_DMA_OPS(source, dest, get_sgtable);
 ASSIGN_VMD_DMA_OPS(source, dest, map_page);
 ASSIGN_VMD_DMA_OPS(source, dest, unmap_page);
 ASSIGN_VMD_DMA_OPS(source, dest, map_sg);
 ASSIGN_VMD_DMA_OPS(source, dest, unmap_sg);
 ASSIGN_VMD_DMA_OPS(source, dest, sync_single_for_cpu);
 ASSIGN_VMD_DMA_OPS(source, dest, sync_single_for_device);
 ASSIGN_VMD_DMA_OPS(source, dest, sync_sg_for_cpu);
 ASSIGN_VMD_DMA_OPS(source, dest, sync_sg_for_device);
 ASSIGN_VMD_DMA_OPS(source, dest, dma_supported);
 ASSIGN_VMD_DMA_OPS(source, dest, get_required_mask);
 add_dma_domain(domain);
}
