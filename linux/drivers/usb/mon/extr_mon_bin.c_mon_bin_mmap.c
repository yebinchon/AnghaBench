
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int vm_private_data; int * vm_ops; } ;
struct file {int private_data; } ;


 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int mon_bin_vm_ops ;
 int mon_bin_vma_open (struct vm_area_struct*) ;

__attribute__((used)) static int mon_bin_mmap(struct file *filp, struct vm_area_struct *vma)
{

 vma->vm_ops = &mon_bin_vm_ops;
 vma->vm_flags |= VM_DONTEXPAND | VM_DONTDUMP;
 vma->vm_private_data = filp->private_data;
 mon_bin_vma_open(vma);
 return 0;
}
