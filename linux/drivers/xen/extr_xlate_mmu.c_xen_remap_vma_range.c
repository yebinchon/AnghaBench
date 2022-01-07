
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; int vm_page_prot; int vm_private_data; } ;
struct remap_pfn {int prot; int pages; int mm; } ;


 int apply_to_page_range (int ,unsigned long,unsigned long,int ,struct remap_pfn*) ;
 int remap_pfn_fn ;

int xen_remap_vma_range(struct vm_area_struct *vma, unsigned long addr, unsigned long len)
{
 struct remap_pfn r = {
  .mm = vma->vm_mm,
  .pages = vma->vm_private_data,
  .prot = vma->vm_page_prot,
 };

 return apply_to_page_range(vma->vm_mm, addr, len, remap_pfn_fn, &r);
}
