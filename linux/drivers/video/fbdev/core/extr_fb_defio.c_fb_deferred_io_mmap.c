
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; struct fb_info* vm_private_data; int * vm_ops; } ;
struct fb_info {int flags; } ;


 int FBINFO_VIRTFB ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int VM_IO ;
 int fb_deferred_io_vm_ops ;

int fb_deferred_io_mmap(struct fb_info *info, struct vm_area_struct *vma)
{
 vma->vm_ops = &fb_deferred_io_vm_ops;
 vma->vm_flags |= VM_DONTEXPAND | VM_DONTDUMP;
 if (!(info->flags & FBINFO_VIRTFB))
  vma->vm_flags |= VM_IO;
 vma->vm_private_data = info;
 return 0;
}
