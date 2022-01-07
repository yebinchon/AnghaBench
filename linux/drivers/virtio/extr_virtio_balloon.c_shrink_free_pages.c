
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_balloon {int dummy; } ;


 int VIRTIO_BALLOON_FREE_PAGE_ORDER ;
 unsigned long return_free_pages_to_mm (struct virtio_balloon*,unsigned long) ;
 unsigned long round_up (unsigned long,int) ;

__attribute__((used)) static unsigned long shrink_free_pages(struct virtio_balloon *vb,
           unsigned long pages_to_free)
{
 unsigned long blocks_to_free, blocks_freed;

 pages_to_free = round_up(pages_to_free,
     1 << VIRTIO_BALLOON_FREE_PAGE_ORDER);
 blocks_to_free = pages_to_free >> VIRTIO_BALLOON_FREE_PAGE_ORDER;
 blocks_freed = return_free_pages_to_mm(vb, blocks_to_free);

 return blocks_freed << VIRTIO_BALLOON_FREE_PAGE_ORDER;
}
