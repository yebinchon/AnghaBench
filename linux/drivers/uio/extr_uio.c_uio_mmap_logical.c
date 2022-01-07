
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int * vm_ops; } ;


 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int uio_logical_vm_ops ;

__attribute__((used)) static int uio_mmap_logical(struct vm_area_struct *vma)
{
 vma->vm_flags |= VM_DONTEXPAND | VM_DONTDUMP;
 vma->vm_ops = &uio_logical_vm_ops;
 return 0;
}
