
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct dma_buf {int dummy; } ;



__attribute__((used)) static int dmabuf_exp_ops_mmap(struct dma_buf *dma_buf,
          struct vm_area_struct *vma)
{

 return 0;
}
