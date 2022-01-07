
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ion_buffer {void* vaddr; } ;
struct dma_buf {struct ion_buffer* priv; } ;


 unsigned long PAGE_SIZE ;

__attribute__((used)) static void *ion_dma_buf_kmap(struct dma_buf *dmabuf, unsigned long offset)
{
 struct ion_buffer *buffer = dmabuf->priv;

 return buffer->vaddr + offset * PAGE_SIZE;
}
