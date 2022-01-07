
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_balloon {unsigned long num_free_page_blocks; int free_page_list_lock; int free_page_list; } ;
struct page {int dummy; } ;


 int VIRTIO_BALLOON_FREE_PAGE_ORDER ;
 struct page* balloon_page_pop (int *) ;
 int free_pages (unsigned long,int ) ;
 scalar_t__ page_address (struct page*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static unsigned long return_free_pages_to_mm(struct virtio_balloon *vb,
          unsigned long num_to_return)
{
 struct page *page;
 unsigned long num_returned;

 spin_lock_irq(&vb->free_page_list_lock);
 for (num_returned = 0; num_returned < num_to_return; num_returned++) {
  page = balloon_page_pop(&vb->free_page_list);
  if (!page)
   break;
  free_pages((unsigned long)page_address(page),
      VIRTIO_BALLOON_FREE_PAGE_ORDER);
 }
 vb->num_free_page_blocks -= num_returned;
 spin_unlock_irq(&vb->free_page_list_lock);

 return num_returned;
}
