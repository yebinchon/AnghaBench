
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;


 unsigned long IPU3_L1PT_MASK ;
 unsigned long IPU3_L2PT_MASK ;
 unsigned long IPU3_L2PT_SHIFT ;
 unsigned long IPU3_PAGE_SHIFT ;

__attribute__((used)) static inline void address_to_pte_idx(unsigned long iova, u32 *l1pt_idx,
          u32 *l2pt_idx)
{
 iova >>= IPU3_PAGE_SHIFT;

 if (l2pt_idx)
  *l2pt_idx = iova & IPU3_L2PT_MASK;

 iova >>= IPU3_L2PT_SHIFT;

 if (l1pt_idx)
  *l1pt_idx = iova & IPU3_L1PT_MASK;
}
