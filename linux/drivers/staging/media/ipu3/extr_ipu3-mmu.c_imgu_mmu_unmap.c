
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imgu_mmu_info {int dummy; } ;
struct imgu_mmu {int dev; } ;


 size_t EINVAL ;
 int IPU3_PAGE_SIZE ;
 int IS_ALIGNED (unsigned long,int ) ;
 size_t __imgu_mmu_unmap (struct imgu_mmu*,unsigned long,int ) ;
 int call_if_imgu_is_powered (struct imgu_mmu*,int ) ;
 int dev_dbg (int ,char*,unsigned long,size_t) ;
 int dev_err (int ,char*,unsigned long,size_t) ;
 int imgu_mmu_tlb_invalidate ;
 struct imgu_mmu* to_imgu_mmu (struct imgu_mmu_info*) ;

size_t imgu_mmu_unmap(struct imgu_mmu_info *info, unsigned long iova,
        size_t size)
{
 struct imgu_mmu *mmu = to_imgu_mmu(info);
 size_t unmapped_page, unmapped = 0;






 if (!IS_ALIGNED(iova | size, IPU3_PAGE_SIZE)) {
  dev_err(mmu->dev, "unaligned: iova 0x%lx size 0x%zx\n",
   iova, size);
  return -EINVAL;
 }

 dev_dbg(mmu->dev, "unmap this: iova 0x%lx size 0x%zx\n", iova, size);





 while (unmapped < size) {
  unmapped_page = __imgu_mmu_unmap(mmu, iova, IPU3_PAGE_SIZE);
  if (!unmapped_page)
   break;

  dev_dbg(mmu->dev, "unmapped: iova 0x%lx size 0x%zx\n",
   iova, unmapped_page);

  iova += unmapped_page;
  unmapped += unmapped_page;
 }

 call_if_imgu_is_powered(mmu, imgu_mmu_tlb_invalidate);

 return unmapped;
}
