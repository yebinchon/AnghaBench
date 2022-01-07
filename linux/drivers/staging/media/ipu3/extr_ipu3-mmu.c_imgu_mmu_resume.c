
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imgu_mmu_info {int dummy; } ;
struct imgu_mmu {scalar_t__ base; int l1pt; } ;


 int IPU3_ADDR2PTE (int ) ;
 scalar_t__ REG_L1_PHYS ;
 int imgu_mmu_set_halt (struct imgu_mmu*,int) ;
 int imgu_mmu_tlb_invalidate (struct imgu_mmu*) ;
 struct imgu_mmu* to_imgu_mmu (struct imgu_mmu_info*) ;
 int virt_to_phys (int ) ;
 int writel (int ,scalar_t__) ;

void imgu_mmu_resume(struct imgu_mmu_info *info)
{
 struct imgu_mmu *mmu = to_imgu_mmu(info);
 u32 pteval;

 imgu_mmu_set_halt(mmu, 1);

 pteval = IPU3_ADDR2PTE(virt_to_phys(mmu->l1pt));
 writel(pteval, mmu->base + REG_L1_PHYS);

 imgu_mmu_tlb_invalidate(mmu);
 imgu_mmu_set_halt(mmu, 0);
}
