
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ion_dma_buf_attachment {int table; int list; } ;
struct ion_buffer {int lock; } ;
struct dma_buf_attachment {struct ion_dma_buf_attachment* priv; } ;
struct dma_buf {struct ion_buffer* priv; } ;


 int free_duped_table (int ) ;
 int kfree (struct ion_dma_buf_attachment*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ion_dma_buf_detatch(struct dma_buf *dmabuf,
    struct dma_buf_attachment *attachment)
{
 struct ion_dma_buf_attachment *a = attachment->priv;
 struct ion_buffer *buffer = dmabuf->priv;

 mutex_lock(&buffer->lock);
 list_del(&a->list);
 mutex_unlock(&buffer->lock);
 free_duped_table(a->table);

 kfree(a);
}
