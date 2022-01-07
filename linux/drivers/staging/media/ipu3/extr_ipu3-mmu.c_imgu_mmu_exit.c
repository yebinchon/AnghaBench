
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imgu_mmu_info {int dummy; } ;
struct imgu_mmu {scalar_t__ dummy_page; int dummy_l2pt; int l2pts; int l1pt; } ;


 int free_page (unsigned long) ;
 int imgu_mmu_free_page_table (int ) ;
 int imgu_mmu_set_halt (struct imgu_mmu*,int) ;
 int imgu_mmu_tlb_invalidate (struct imgu_mmu*) ;
 int kfree (struct imgu_mmu*) ;
 struct imgu_mmu* to_imgu_mmu (struct imgu_mmu_info*) ;
 int vfree (int ) ;

void imgu_mmu_exit(struct imgu_mmu_info *info)
{
 struct imgu_mmu *mmu = to_imgu_mmu(info);


 imgu_mmu_set_halt(mmu, 1);
 imgu_mmu_tlb_invalidate(mmu);

 imgu_mmu_free_page_table(mmu->l1pt);
 vfree(mmu->l2pts);
 imgu_mmu_free_page_table(mmu->dummy_l2pt);
 free_page((unsigned long)mmu->dummy_page);
 kfree(mmu);
}
