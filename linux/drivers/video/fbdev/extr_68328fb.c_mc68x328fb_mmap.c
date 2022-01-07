
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int vm_start; } ;
struct fb_info {int dummy; } ;


 int EINVAL ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int videomemory ;

__attribute__((used)) static int mc68x328fb_mmap(struct fb_info *info, struct vm_area_struct *vma)
{



 vma->vm_flags |= VM_DONTEXPAND | VM_DONTDUMP;
 vma->vm_start = videomemory;

 return 0;



}
