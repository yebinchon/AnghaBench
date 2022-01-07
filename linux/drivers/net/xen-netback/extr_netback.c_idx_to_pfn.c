
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct xenvif_queue {int * mmap_pages; } ;


 unsigned long page_to_pfn (int ) ;

__attribute__((used)) static inline unsigned long idx_to_pfn(struct xenvif_queue *queue,
           u16 idx)
{
 return page_to_pfn(queue->mmap_pages[idx]);
}
