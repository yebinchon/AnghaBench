
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {size_t vm_pgoff; struct tcmu_dev* vm_private_data; } ;
struct uio_info {TYPE_1__* mem; } ;
struct tcmu_dev {struct uio_info uio_info; } ;
struct TYPE_2__ {scalar_t__ size; } ;


 size_t MAX_UIO_MAPS ;

__attribute__((used)) static int tcmu_find_mem_index(struct vm_area_struct *vma)
{
 struct tcmu_dev *udev = vma->vm_private_data;
 struct uio_info *info = &udev->uio_info;

 if (vma->vm_pgoff < MAX_UIO_MAPS) {
  if (info->mem[vma->vm_pgoff].size == 0)
   return -1;
  return (int)vma->vm_pgoff;
 }
 return -1;
}
