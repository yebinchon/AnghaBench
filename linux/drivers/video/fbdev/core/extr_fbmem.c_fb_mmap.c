
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct vm_area_struct {unsigned long vm_pgoff; void* vm_page_prot; int vm_flags; } ;
struct file {int dummy; } ;
struct fb_ops {int (* fb_mmap ) (struct fb_info*,struct vm_area_struct*) ;} ;
struct TYPE_4__ {unsigned long smem_start; unsigned long mmio_start; scalar_t__ mmio_len; scalar_t__ smem_len; } ;
struct TYPE_3__ {scalar_t__ accel_flags; } ;
struct fb_info {int mm_lock; TYPE_2__ fix; TYPE_1__ var; struct fb_ops* fbops; } ;


 int EINVAL ;
 int ENODEV ;
 unsigned long PAGE_ALIGN (scalar_t__) ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int fb_pgprotect (struct file*,struct vm_area_struct*,unsigned long) ;
 struct fb_info* file_fb_info (struct file*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void* pgprot_decrypted (void*) ;
 int stub1 (struct fb_info*,struct vm_area_struct*) ;
 void* vm_get_page_prot (int ) ;
 int vm_iomap_memory (struct vm_area_struct*,unsigned long,scalar_t__) ;

__attribute__((used)) static int
fb_mmap(struct file *file, struct vm_area_struct * vma)
{
 struct fb_info *info = file_fb_info(file);
 struct fb_ops *fb;
 unsigned long mmio_pgoff;
 unsigned long start;
 u32 len;

 if (!info)
  return -ENODEV;
 fb = info->fbops;
 mutex_lock(&info->mm_lock);
 if (fb->fb_mmap) {
  int res;





  vma->vm_page_prot = pgprot_decrypted(vma->vm_page_prot);
  res = fb->fb_mmap(info, vma);
  mutex_unlock(&info->mm_lock);
  return res;
 }





 start = info->fix.smem_start;
 len = info->fix.smem_len;
 mmio_pgoff = PAGE_ALIGN((start & ~PAGE_MASK) + len) >> PAGE_SHIFT;
 if (vma->vm_pgoff >= mmio_pgoff) {
  if (info->var.accel_flags) {
   mutex_unlock(&info->mm_lock);
   return -EINVAL;
  }

  vma->vm_pgoff -= mmio_pgoff;
  start = info->fix.mmio_start;
  len = info->fix.mmio_len;
 }
 mutex_unlock(&info->mm_lock);

 vma->vm_page_prot = vm_get_page_prot(vma->vm_flags);




 vma->vm_page_prot = pgprot_decrypted(vma->vm_page_prot);
 fb_pgprotect(file, vma, start);

 return vm_iomap_memory(vma, start, len);
}
