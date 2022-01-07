
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct file {TYPE_1__* f_op; } ;
struct TYPE_2__ {int mmap; } ;


 int ENODEV ;
 struct file* ecryptfs_file_to_lower (struct file*) ;
 int generic_file_mmap (struct file*,struct vm_area_struct*) ;

__attribute__((used)) static int ecryptfs_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct file *lower_file = ecryptfs_file_to_lower(file);





 if (!lower_file->f_op->mmap)
  return -ENODEV;
 return generic_file_mmap(file, vma);
}
