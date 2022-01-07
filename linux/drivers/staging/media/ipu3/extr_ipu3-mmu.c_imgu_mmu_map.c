
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imgu_mmu_info {int dummy; } ;
struct imgu_mmu {int dev; } ;
typedef unsigned long phys_addr_t ;


 int EINVAL ;
 scalar_t__ IPU3_PAGE_SIZE ;
 int IS_ALIGNED (unsigned long,scalar_t__) ;
 int __imgu_mmu_map (struct imgu_mmu*,unsigned long,unsigned long) ;
 int call_if_imgu_is_powered (struct imgu_mmu*,int ) ;
 int dev_dbg (int ,char*,unsigned long,unsigned long*,...) ;
 int dev_err (int ,char*,unsigned long,unsigned long*,size_t) ;
 int imgu_mmu_tlb_invalidate ;
 struct imgu_mmu* to_imgu_mmu (struct imgu_mmu_info*) ;

int imgu_mmu_map(struct imgu_mmu_info *info, unsigned long iova,
   phys_addr_t paddr, size_t size)
{
 struct imgu_mmu *mmu = to_imgu_mmu(info);
 int ret = 0;






 if (!IS_ALIGNED(iova | paddr | size, IPU3_PAGE_SIZE)) {
  dev_err(mmu->dev, "unaligned: iova 0x%lx pa %pa size 0x%zx\n",
   iova, &paddr, size);
  return -EINVAL;
 }

 dev_dbg(mmu->dev, "map: iova 0x%lx pa %pa size 0x%zx\n",
  iova, &paddr, size);

 while (size) {
  dev_dbg(mmu->dev, "mapping: iova 0x%lx pa %pa\n", iova, &paddr);

  ret = __imgu_mmu_map(mmu, iova, paddr);
  if (ret)
   break;

  iova += IPU3_PAGE_SIZE;
  paddr += IPU3_PAGE_SIZE;
  size -= IPU3_PAGE_SIZE;
 }

 call_if_imgu_is_powered(mmu, imgu_mmu_tlb_invalidate);

 return ret;
}
