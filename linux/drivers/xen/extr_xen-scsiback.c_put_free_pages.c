
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; } ;


 int free_pages_lock ;
 int free_pages_num ;
 int gnttab_free_pages (int,struct page**) ;
 int list_add (int *,int *) ;
 int min (int,int) ;
 int scsiback_free_pages ;
 int scsiback_max_buffer_pages ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void put_free_pages(struct page **page, int num)
{
 unsigned long flags;
 int i = free_pages_num + num, n = num;

 if (num == 0)
  return;
 if (i > scsiback_max_buffer_pages) {
  n = min(num, i - scsiback_max_buffer_pages);
  gnttab_free_pages(n, page + num - n);
  n = num - n;
 }
 spin_lock_irqsave(&free_pages_lock, flags);
 for (i = 0; i < n; i++)
  list_add(&page[i]->lru, &scsiback_free_pages);
 free_pages_num += n;
 spin_unlock_irqrestore(&free_pages_lock, flags);
}
