
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {size_t vm_end; size_t vm_start; int vm_page_prot; } ;
struct tee_shm {int flags; int paddr; } ;
struct dma_buf {struct tee_shm* priv; } ;


 int EINVAL ;
 int PAGE_SHIFT ;
 int TEE_SHM_REGISTER ;
 int remap_pfn_range (struct vm_area_struct*,size_t,int,size_t,int ) ;

__attribute__((used)) static int tee_shm_op_mmap(struct dma_buf *dmabuf, struct vm_area_struct *vma)
{
 struct tee_shm *shm = dmabuf->priv;
 size_t size = vma->vm_end - vma->vm_start;


 if (shm->flags & TEE_SHM_REGISTER)
  return -EINVAL;

 return remap_pfn_range(vma, vma->vm_start, shm->paddr >> PAGE_SHIFT,
          size, vma->vm_page_prot);
}
