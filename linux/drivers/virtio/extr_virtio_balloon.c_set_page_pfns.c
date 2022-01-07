
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_balloon {int vdev; } ;
struct page {int dummy; } ;
typedef int __virtio32 ;


 unsigned int VIRTIO_BALLOON_PAGES_PER_PAGE ;
 int cpu_to_virtio32 (int ,scalar_t__) ;
 scalar_t__ page_to_balloon_pfn (struct page*) ;

__attribute__((used)) static void set_page_pfns(struct virtio_balloon *vb,
     __virtio32 pfns[], struct page *page)
{
 unsigned int i;





 for (i = 0; i < VIRTIO_BALLOON_PAGES_PER_PAGE; i++)
  pfns[i] = cpu_to_virtio32(vb->vdev,
       page_to_balloon_pfn(page) + i);
}
