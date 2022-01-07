
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imgu_mmu {scalar_t__ base; } ;


 scalar_t__ REG_TLB_INVALIDATE ;
 int TLB_INVALIDATE ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void imgu_mmu_tlb_invalidate(struct imgu_mmu *mmu)
{
 writel(TLB_INVALIDATE, mmu->base + REG_TLB_INVALIDATE);
}
