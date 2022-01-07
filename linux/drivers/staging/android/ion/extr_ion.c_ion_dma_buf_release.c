
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ion_buffer {int dummy; } ;
struct dma_buf {struct ion_buffer* priv; } ;


 int _ion_buffer_destroy (struct ion_buffer*) ;

__attribute__((used)) static void ion_dma_buf_release(struct dma_buf *dmabuf)
{
 struct ion_buffer *buffer = dmabuf->priv;

 _ion_buffer_destroy(buffer);
}
