
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct ion_dma_buf_attachment {int list; int dev; struct sg_table* table; } ;
struct ion_buffer {int lock; int attachments; int sg_table; } ;
struct dma_buf_attachment {struct ion_dma_buf_attachment* priv; int dev; } ;
struct dma_buf {struct ion_buffer* priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct sg_table*) ;
 struct sg_table* dup_sg_table (int ) ;
 int kfree (struct ion_dma_buf_attachment*) ;
 struct ion_dma_buf_attachment* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ion_dma_buf_attach(struct dma_buf *dmabuf,
         struct dma_buf_attachment *attachment)
{
 struct ion_dma_buf_attachment *a;
 struct sg_table *table;
 struct ion_buffer *buffer = dmabuf->priv;

 a = kzalloc(sizeof(*a), GFP_KERNEL);
 if (!a)
  return -ENOMEM;

 table = dup_sg_table(buffer->sg_table);
 if (IS_ERR(table)) {
  kfree(a);
  return -ENOMEM;
 }

 a->table = table;
 a->dev = attachment->dev;
 INIT_LIST_HEAD(&a->list);

 attachment->priv = a;

 mutex_lock(&buffer->lock);
 list_add(&a->list, &buffer->attachments);
 mutex_unlock(&buffer->lock);

 return 0;
}
