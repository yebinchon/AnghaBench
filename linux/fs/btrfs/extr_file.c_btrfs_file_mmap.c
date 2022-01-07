
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int * vm_ops; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {TYPE_1__* a_ops; } ;
struct TYPE_2__ {int readpage; } ;


 int ENOEXEC ;
 int btrfs_file_vm_ops ;
 int file_accessed (struct file*) ;

__attribute__((used)) static int btrfs_file_mmap(struct file *filp, struct vm_area_struct *vma)
{
 struct address_space *mapping = filp->f_mapping;

 if (!mapping->a_ops->readpage)
  return -ENOEXEC;

 file_accessed(filp);
 vma->vm_ops = &btrfs_file_vm_ops;

 return 0;
}
