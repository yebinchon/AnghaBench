
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int num_free; } ;
struct virtio_balloon {int free_page_list_lock; int num_free_page_blocks; int free_page_list; struct virtqueue* free_page_vq; } ;
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;


 int EINTR ;
 int GFP_KERNEL ;
 int VIRTIO_BALLOON_FREE_PAGE_ALLOC_FLAG ;
 int VIRTIO_BALLOON_FREE_PAGE_ORDER ;
 int VIRTIO_BALLOON_FREE_PAGE_SIZE ;
 struct page* alloc_pages (int ,int ) ;
 int balloon_page_push (int *,struct page*) ;
 int free_pages (unsigned long,int ) ;
 void* page_address (struct page*) ;
 int sg_init_one (struct scatterlist*,void*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;
 int virtqueue_add_inbuf (struct virtqueue*,struct scatterlist*,int,void*,int ) ;
 scalar_t__ virtqueue_get_buf (struct virtqueue*,int*) ;
 int virtqueue_kick (struct virtqueue*) ;

__attribute__((used)) static int get_free_page_and_send(struct virtio_balloon *vb)
{
 struct virtqueue *vq = vb->free_page_vq;
 struct page *page;
 struct scatterlist sg;
 int err, unused;
 void *p;


 while (virtqueue_get_buf(vq, &unused))
  ;

 page = alloc_pages(VIRTIO_BALLOON_FREE_PAGE_ALLOC_FLAG,
      VIRTIO_BALLOON_FREE_PAGE_ORDER);




 if (!page)
  return -EINTR;

 p = page_address(page);
 sg_init_one(&sg, p, VIRTIO_BALLOON_FREE_PAGE_SIZE);

 if (vq->num_free > 1) {
  err = virtqueue_add_inbuf(vq, &sg, 1, p, GFP_KERNEL);
  if (unlikely(err)) {
   free_pages((unsigned long)p,
       VIRTIO_BALLOON_FREE_PAGE_ORDER);
   return err;
  }
  virtqueue_kick(vq);
  spin_lock_irq(&vb->free_page_list_lock);
  balloon_page_push(&vb->free_page_list, page);
  vb->num_free_page_blocks++;
  spin_unlock_irq(&vb->free_page_list_lock);
 } else {




  free_pages((unsigned long)p, VIRTIO_BALLOON_FREE_PAGE_ORDER);
 }

 return 0;
}
