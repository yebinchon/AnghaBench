
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;


 unsigned long PAGE_SHIFT ;
 scalar_t__ apply_to_page_range (int ,unsigned long,unsigned long,int ,int *) ;
 int is_mapped_fn ;

__attribute__((used)) static int privcmd_vma_range_is_mapped(
            struct vm_area_struct *vma,
            unsigned long addr,
            unsigned long nr_pages)
{
 return apply_to_page_range(vma->vm_mm, addr, nr_pages << PAGE_SHIFT,
       is_mapped_fn, ((void*)0)) != 0;
}
