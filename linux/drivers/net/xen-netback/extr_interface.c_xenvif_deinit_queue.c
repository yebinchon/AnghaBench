
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif_queue {int mmap_pages; } ;


 int MAX_PENDING_REQS ;
 int gnttab_free_pages (int ,int ) ;

void xenvif_deinit_queue(struct xenvif_queue *queue)
{
 gnttab_free_pages(MAX_PENDING_REQS, queue->mmap_pages);
}
