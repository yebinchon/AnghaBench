
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int vm_flags; int * vm_ops; TYPE_2__* vm_private_data; scalar_t__ vm_pgoff; } ;
struct file {scalar_t__ private_data; } ;
struct TYPE_3__ {unsigned long bufflen; int page_order; int k_use_sg; } ;
struct TYPE_4__ {int mmap_called; int f_mutex; TYPE_1__ reserve; int parentdp; } ;
typedef TYPE_1__ Sg_scatter_hold ;
typedef TYPE_2__ Sg_fd ;


 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int KERN_INFO ;
 int PAGE_SHIFT ;
 int SCSI_LOG_TIMEOUT (int,int ) ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int VM_IO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sg_mmap_vm_ops ;
 int sg_printk (int ,int ,char*,void*,int) ;

__attribute__((used)) static int
sg_mmap(struct file *filp, struct vm_area_struct *vma)
{
 Sg_fd *sfp;
 unsigned long req_sz, len, sa;
 Sg_scatter_hold *rsv_schp;
 int k, length;
 int ret = 0;

 if ((!filp) || (!vma) || (!(sfp = (Sg_fd *) filp->private_data)))
  return -ENXIO;
 req_sz = vma->vm_end - vma->vm_start;
 SCSI_LOG_TIMEOUT(3, sg_printk(KERN_INFO, sfp->parentdp,
          "sg_mmap starting, vm_start=%p, len=%d\n",
          (void *) vma->vm_start, (int) req_sz));
 if (vma->vm_pgoff)
  return -EINVAL;
 rsv_schp = &sfp->reserve;
 mutex_lock(&sfp->f_mutex);
 if (req_sz > rsv_schp->bufflen) {
  ret = -ENOMEM;
  goto out;
 }

 sa = vma->vm_start;
 length = 1 << (PAGE_SHIFT + rsv_schp->page_order);
 for (k = 0; k < rsv_schp->k_use_sg && sa < vma->vm_end; k++) {
  len = vma->vm_end - sa;
  len = (len < length) ? len : length;
  sa += len;
 }

 sfp->mmap_called = 1;
 vma->vm_flags |= VM_IO | VM_DONTEXPAND | VM_DONTDUMP;
 vma->vm_private_data = sfp;
 vma->vm_ops = &sg_mmap_vm_ops;
out:
 mutex_unlock(&sfp->f_mutex);
 return ret;
}
