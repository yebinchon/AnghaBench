
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_iova {int list; void* end; void* start; } ;
struct list_head {int dummy; } ;
typedef void* dma_addr_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct vfio_iova* kmalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static int vfio_iommu_iova_insert(struct list_head *head,
      dma_addr_t start, dma_addr_t end)
{
 struct vfio_iova *region;

 region = kmalloc(sizeof(*region), GFP_KERNEL);
 if (!region)
  return -ENOMEM;

 INIT_LIST_HEAD(&region->list);
 region->start = start;
 region->end = end;

 list_add_tail(&region->list, head);
 return 0;
}
