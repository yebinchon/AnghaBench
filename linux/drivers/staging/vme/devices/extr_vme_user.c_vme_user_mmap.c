
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int i_rdev; } ;


 int ENODEV ;
 scalar_t__ MASTER_MINOR ;
 unsigned int MINOR (int ) ;
 TYPE_1__* file_inode (struct file*) ;
 scalar_t__* type ;
 int vme_user_master_mmap (unsigned int,struct vm_area_struct*) ;

__attribute__((used)) static int vme_user_mmap(struct file *file, struct vm_area_struct *vma)
{
 unsigned int minor = MINOR(file_inode(file)->i_rdev);

 if (type[minor] == MASTER_MINOR)
  return vme_user_master_mmap(minor, vma);

 return -ENODEV;
}
