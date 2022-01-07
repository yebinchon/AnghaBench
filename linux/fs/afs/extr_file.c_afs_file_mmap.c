
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int * vm_ops; } ;
struct file {int dummy; } ;


 int afs_vm_ops ;
 int generic_file_mmap (struct file*,struct vm_area_struct*) ;

__attribute__((used)) static int afs_file_mmap(struct file *file, struct vm_area_struct *vma)
{
 int ret;

 ret = generic_file_mmap(file, vma);
 if (ret == 0)
  vma->vm_ops = &afs_vm_ops;
 return ret;
}
