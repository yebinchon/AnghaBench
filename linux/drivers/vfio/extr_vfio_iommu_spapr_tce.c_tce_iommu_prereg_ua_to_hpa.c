
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tce_container {int mm; } ;
struct mm_iommu_table_group_mem_t {int dummy; } ;


 int EINVAL ;
 struct mm_iommu_table_group_mem_t* mm_iommu_lookup (int ,unsigned long,unsigned long long) ;
 long mm_iommu_ua_to_hpa (struct mm_iommu_table_group_mem_t*,unsigned long,unsigned long,unsigned long*) ;

__attribute__((used)) static int tce_iommu_prereg_ua_to_hpa(struct tce_container *container,
  unsigned long tce, unsigned long shift,
  unsigned long *phpa, struct mm_iommu_table_group_mem_t **pmem)
{
 long ret = 0;
 struct mm_iommu_table_group_mem_t *mem;

 mem = mm_iommu_lookup(container->mm, tce, 1ULL << shift);
 if (!mem)
  return -EINVAL;

 ret = mm_iommu_ua_to_hpa(mem, tce, shift, phpa);
 if (ret)
  return -EINVAL;

 *pmem = mem;

 return 0;
}
