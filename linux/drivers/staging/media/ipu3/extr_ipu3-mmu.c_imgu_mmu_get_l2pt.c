
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct imgu_mmu {size_t** l2pts; size_t* l1pt; int lock; int dev; int dummy_page_pteval; } ;


 size_t IPU3_ADDR2PTE (int ) ;
 int dev_dbg (int ,char*,size_t*,size_t) ;
 size_t* imgu_mmu_alloc_page_table (int ) ;
 int imgu_mmu_free_page_table (size_t*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virt_to_phys (size_t*) ;

__attribute__((used)) static u32 *imgu_mmu_get_l2pt(struct imgu_mmu *mmu, u32 l1pt_idx)
{
 unsigned long flags;
 u32 *l2pt, *new_l2pt;
 u32 pteval;

 spin_lock_irqsave(&mmu->lock, flags);

 l2pt = mmu->l2pts[l1pt_idx];
 if (l2pt)
  goto done;

 spin_unlock_irqrestore(&mmu->lock, flags);

 new_l2pt = imgu_mmu_alloc_page_table(mmu->dummy_page_pteval);
 if (!new_l2pt)
  return ((void*)0);

 spin_lock_irqsave(&mmu->lock, flags);

 dev_dbg(mmu->dev, "allocated page table %p for l1pt_idx %u\n",
  new_l2pt, l1pt_idx);

 l2pt = mmu->l2pts[l1pt_idx];
 if (l2pt) {
  imgu_mmu_free_page_table(new_l2pt);
  goto done;
 }

 l2pt = new_l2pt;
 mmu->l2pts[l1pt_idx] = new_l2pt;

 pteval = IPU3_ADDR2PTE(virt_to_phys(new_l2pt));
 mmu->l1pt[l1pt_idx] = pteval;

done:
 spin_unlock_irqrestore(&mmu->lock, flags);
 return l2pt;
}
