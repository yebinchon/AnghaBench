
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ion_heap {int flags; scalar_t__ num_of_alloc_bytes; scalar_t__ alloc_bytes_wm; TYPE_1__* ops; int stat_lock; int num_of_buffers; } ;
struct ion_device {int dummy; } ;
struct ion_buffer {unsigned long flags; unsigned long size; int lock; int attachments; int sg_table; struct ion_device* dev; struct ion_heap* heap; } ;
struct TYPE_2__ {int (* allocate ) (struct ion_heap*,struct ion_buffer*,unsigned long,unsigned long) ;int (* free ) (struct ion_buffer*) ;} ;


 int EINVAL ;
 int ENOMEM ;
 struct ion_buffer* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ION_HEAP_FLAG_DEFER_FREE ;
 int WARN_ONCE (int,char*) ;
 int ion_heap_freelist_drain (struct ion_heap*,int ) ;
 int kfree (struct ion_buffer*) ;
 struct ion_buffer* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct ion_heap*,struct ion_buffer*,unsigned long,unsigned long) ;
 int stub2 (struct ion_heap*,struct ion_buffer*,unsigned long,unsigned long) ;
 int stub3 (struct ion_buffer*) ;

__attribute__((used)) static struct ion_buffer *ion_buffer_create(struct ion_heap *heap,
         struct ion_device *dev,
         unsigned long len,
         unsigned long flags)
{
 struct ion_buffer *buffer;
 int ret;

 buffer = kzalloc(sizeof(*buffer), GFP_KERNEL);
 if (!buffer)
  return ERR_PTR(-ENOMEM);

 buffer->heap = heap;
 buffer->flags = flags;
 buffer->dev = dev;
 buffer->size = len;

 ret = heap->ops->allocate(heap, buffer, len, flags);

 if (ret) {
  if (!(heap->flags & ION_HEAP_FLAG_DEFER_FREE))
   goto err2;

  ion_heap_freelist_drain(heap, 0);
  ret = heap->ops->allocate(heap, buffer, len, flags);
  if (ret)
   goto err2;
 }

 if (!buffer->sg_table) {
  WARN_ONCE(1, "This heap needs to set the sgtable");
  ret = -EINVAL;
  goto err1;
 }

 spin_lock(&heap->stat_lock);
 heap->num_of_buffers++;
 heap->num_of_alloc_bytes += len;
 if (heap->num_of_alloc_bytes > heap->alloc_bytes_wm)
  heap->alloc_bytes_wm = heap->num_of_alloc_bytes;
 spin_unlock(&heap->stat_lock);

 INIT_LIST_HEAD(&buffer->attachments);
 mutex_init(&buffer->lock);
 return buffer;

err1:
 heap->ops->free(buffer);
err2:
 kfree(buffer);
 return ERR_PTR(ret);
}
