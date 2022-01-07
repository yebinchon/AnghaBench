
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int * vm_ops; } ;
struct file {int dummy; } ;


 int generic_file_mmap (struct file*,struct vm_area_struct*) ;
 int v9fs_file_vm_ops ;

__attribute__((used)) static int
v9fs_file_mmap(struct file *filp, struct vm_area_struct *vma)
{
 int retval;


 retval = generic_file_mmap(filp, vma);
 if (!retval)
  vma->vm_ops = &v9fs_file_vm_ops;

 return retval;
}
