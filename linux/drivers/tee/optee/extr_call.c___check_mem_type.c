
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_end; struct vm_area_struct* vm_next; int vm_page_prot; } ;


 int EINVAL ;
 scalar_t__ is_normal_memory (int ) ;

__attribute__((used)) static int __check_mem_type(struct vm_area_struct *vma, unsigned long end)
{
 while (vma && is_normal_memory(vma->vm_page_prot)) {
  if (vma->vm_end >= end)
   return 0;
  vma = vma->vm_next;
 }

 return -EINVAL;
}
