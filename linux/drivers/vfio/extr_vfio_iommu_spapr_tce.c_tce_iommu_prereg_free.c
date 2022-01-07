
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tce_iommu_prereg {int next; int mem; } ;
struct tce_container {int mm; } ;


 int kfree (struct tce_iommu_prereg*) ;
 int list_del (int *) ;
 long mm_iommu_put (int ,int ) ;

__attribute__((used)) static long tce_iommu_prereg_free(struct tce_container *container,
  struct tce_iommu_prereg *tcemem)
{
 long ret;

 ret = mm_iommu_put(container->mm, tcemem->mem);
 if (ret)
  return ret;

 list_del(&tcemem->next);
 kfree(tcemem);

 return 0;
}
