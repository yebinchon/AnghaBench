
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_balloon {scalar_t__ num_pages; } ;


 unsigned long VIRTIO_BALLOON_PAGES_PER_PAGE ;
 unsigned long leak_balloon (struct virtio_balloon*,unsigned long) ;
 int update_balloon_size (struct virtio_balloon*) ;

__attribute__((used)) static unsigned long shrink_balloon_pages(struct virtio_balloon *vb,
       unsigned long pages_to_free)
{
 unsigned long pages_freed = 0;






 while (vb->num_pages && pages_to_free) {
  pages_freed += leak_balloon(vb, pages_to_free) /
     VIRTIO_BALLOON_PAGES_PER_PAGE;
  pages_to_free -= pages_freed;
 }
 update_balloon_size(vb);

 return pages_freed;
}
