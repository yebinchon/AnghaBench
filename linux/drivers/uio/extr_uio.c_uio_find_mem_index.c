
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {size_t vm_pgoff; struct uio_device* vm_private_data; } ;
struct uio_device {TYPE_2__* info; } ;
struct TYPE_4__ {TYPE_1__* mem; } ;
struct TYPE_3__ {scalar_t__ size; } ;


 size_t MAX_UIO_MAPS ;

__attribute__((used)) static int uio_find_mem_index(struct vm_area_struct *vma)
{
 struct uio_device *idev = vma->vm_private_data;

 if (vma->vm_pgoff < MAX_UIO_MAPS) {
  if (idev->info->mem[vma->vm_pgoff].size == 0)
   return -1;
  return (int)vma->vm_pgoff;
 }
 return -1;
}
