
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GFP_KERNEL ;
 int IPU3_PT_ORDER ;
 int IPU3_PT_PTES ;
 scalar_t__ __get_free_page (int ) ;
 int set_memory_uc (unsigned long,int ) ;

__attribute__((used)) static u32 *imgu_mmu_alloc_page_table(u32 pteval)
{
 u32 *pt;
 int pte;

 pt = (u32 *)__get_free_page(GFP_KERNEL);
 if (!pt)
  return ((void*)0);

 for (pte = 0; pte < IPU3_PT_PTES; pte++)
  pt[pte] = pteval;

 set_memory_uc((unsigned long int)pt, IPU3_PT_ORDER);

 return pt;
}
