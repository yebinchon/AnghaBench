
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IPU3_PT_ORDER ;
 int free_page (unsigned long) ;
 int set_memory_wb (unsigned long,int ) ;

__attribute__((used)) static void imgu_mmu_free_page_table(u32 *pt)
{
 set_memory_wb((unsigned long int)pt, IPU3_PT_ORDER);
 free_page((unsigned long)pt);
}
