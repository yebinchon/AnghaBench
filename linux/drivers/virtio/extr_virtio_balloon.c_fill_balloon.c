
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_balloon {unsigned int num_pfns; int balloon_lock; int inflate_vq; TYPE_1__* vdev; int num_pages; scalar_t__ pfns; int vb_dev_info; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (scalar_t__) ;
 int LIST_HEAD (int ) ;
 int VIRTIO_BALLOON_F_DEFLATE_ON_OOM ;
 scalar_t__ VIRTIO_BALLOON_PAGES_PER_PAGE ;
 int adjust_managed_page_count (struct page*,int) ;
 struct page* balloon_page_alloc () ;
 int balloon_page_enqueue (int *,struct page*) ;
 struct page* balloon_page_pop (int *) ;
 int balloon_page_push (int *,struct page*) ;
 int dev_info_ratelimited (int *,char*,scalar_t__) ;
 size_t min (size_t,int ) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pages ;
 int set_page_pfns (struct virtio_balloon*,scalar_t__,struct page*) ;
 int tell_host (struct virtio_balloon*,int ) ;
 int virtio_has_feature (TYPE_1__*,int ) ;

__attribute__((used)) static unsigned fill_balloon(struct virtio_balloon *vb, size_t num)
{
 unsigned num_allocated_pages;
 unsigned num_pfns;
 struct page *page;
 LIST_HEAD(pages);


 num = min(num, ARRAY_SIZE(vb->pfns));

 for (num_pfns = 0; num_pfns < num;
      num_pfns += VIRTIO_BALLOON_PAGES_PER_PAGE) {
  struct page *page = balloon_page_alloc();

  if (!page) {
   dev_info_ratelimited(&vb->vdev->dev,
          "Out of puff! Can't get %u pages\n",
          VIRTIO_BALLOON_PAGES_PER_PAGE);

   msleep(200);
   break;
  }

  balloon_page_push(&pages, page);
 }

 mutex_lock(&vb->balloon_lock);

 vb->num_pfns = 0;

 while ((page = balloon_page_pop(&pages))) {
  balloon_page_enqueue(&vb->vb_dev_info, page);

  set_page_pfns(vb, vb->pfns + vb->num_pfns, page);
  vb->num_pages += VIRTIO_BALLOON_PAGES_PER_PAGE;
  if (!virtio_has_feature(vb->vdev,
     VIRTIO_BALLOON_F_DEFLATE_ON_OOM))
   adjust_managed_page_count(page, -1);
  vb->num_pfns += VIRTIO_BALLOON_PAGES_PER_PAGE;
 }

 num_allocated_pages = vb->num_pfns;

 if (vb->num_pfns != 0)
  tell_host(vb, vb->inflate_vq);
 mutex_unlock(&vb->balloon_lock);

 return num_allocated_pages;
}
