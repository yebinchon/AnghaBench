
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct balloon_dev_info {int dummy; } ;
struct virtio_balloon {size_t num_pfns; int balloon_lock; int deflate_vq; scalar_t__ num_pages; scalar_t__ pfns; struct balloon_dev_info vb_dev_info; } ;
struct page {int lru; } ;


 size_t ARRAY_SIZE (scalar_t__) ;
 int LIST_HEAD (int ) ;
 scalar_t__ VIRTIO_BALLOON_PAGES_PER_PAGE ;
 struct page* balloon_page_dequeue (struct balloon_dev_info*) ;
 int list_add (int *,int *) ;
 size_t min (size_t,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pages ;
 int release_pages_balloon (struct virtio_balloon*,int *) ;
 int set_page_pfns (struct virtio_balloon*,scalar_t__,struct page*) ;
 int tell_host (struct virtio_balloon*,int ) ;

__attribute__((used)) static unsigned leak_balloon(struct virtio_balloon *vb, size_t num)
{
 unsigned num_freed_pages;
 struct page *page;
 struct balloon_dev_info *vb_dev_info = &vb->vb_dev_info;
 LIST_HEAD(pages);


 num = min(num, ARRAY_SIZE(vb->pfns));

 mutex_lock(&vb->balloon_lock);

 num = min(num, (size_t)vb->num_pages);
 for (vb->num_pfns = 0; vb->num_pfns < num;
      vb->num_pfns += VIRTIO_BALLOON_PAGES_PER_PAGE) {
  page = balloon_page_dequeue(vb_dev_info);
  if (!page)
   break;
  set_page_pfns(vb, vb->pfns + vb->num_pfns, page);
  list_add(&page->lru, &pages);
  vb->num_pages -= VIRTIO_BALLOON_PAGES_PER_PAGE;
 }

 num_freed_pages = vb->num_pfns;





 if (vb->num_pfns != 0)
  tell_host(vb, vb->deflate_vq);
 release_pages_balloon(vb, &pages);
 mutex_unlock(&vb->balloon_lock);
 return num_freed_pages;
}
