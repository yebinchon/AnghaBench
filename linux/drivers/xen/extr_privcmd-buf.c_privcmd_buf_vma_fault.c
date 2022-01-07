
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {scalar_t__ address; int pgoff; TYPE_1__* vma; } ;
struct TYPE_2__ {int vm_end; int vm_start; } ;


 int VM_FAULT_SIGBUS ;
 int pr_debug (char*,TYPE_1__*,int ,int ,int ,void*) ;

__attribute__((used)) static vm_fault_t privcmd_buf_vma_fault(struct vm_fault *vmf)
{
 pr_debug("fault: vma=%p %lx-%lx, pgoff=%lx, uv=%p\n",
   vmf->vma, vmf->vma->vm_start, vmf->vma->vm_end,
   vmf->pgoff, (void *)vmf->address);

 return VM_FAULT_SIGBUS;
}
