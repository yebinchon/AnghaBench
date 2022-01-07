
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int * vm_private_data; int * vm_ops; } ;
struct file {int dummy; } ;


 int VM_DONTCOPY ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int VM_IO ;
 int VM_PFNMAP ;
 int privcmd_vm_ops ;

__attribute__((used)) static int privcmd_mmap(struct file *file, struct vm_area_struct *vma)
{


 vma->vm_flags |= VM_IO | VM_PFNMAP | VM_DONTCOPY |
    VM_DONTEXPAND | VM_DONTDUMP;
 vma->vm_ops = &privcmd_vm_ops;
 vma->vm_private_data = ((void*)0);

 return 0;
}
