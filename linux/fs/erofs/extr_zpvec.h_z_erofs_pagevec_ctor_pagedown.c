
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_erofs_pagevec_ctor {int nr; scalar_t__ index; struct page* curr; int pages; int * next; } ;
struct page {int dummy; } ;


 int PAGE_SIZE ;
 int kmap (struct page*) ;
 int kmap_atomic (struct page*) ;
 int z_erofs_pagevec_ctor_exit (struct z_erofs_pagevec_ctor*,int) ;
 struct page* z_erofs_pagevec_ctor_next_page (struct z_erofs_pagevec_ctor*,int) ;

__attribute__((used)) static inline void
z_erofs_pagevec_ctor_pagedown(struct z_erofs_pagevec_ctor *ctor,
         bool atomic)
{
 struct page *next = z_erofs_pagevec_ctor_next_page(ctor, ctor->nr);

 z_erofs_pagevec_ctor_exit(ctor, atomic);

 ctor->curr = next;
 ctor->next = ((void*)0);
 ctor->pages = atomic ?
  kmap_atomic(ctor->curr) : kmap(ctor->curr);

 ctor->nr = PAGE_SIZE / sizeof(struct page *);
 ctor->index = 0;
}
