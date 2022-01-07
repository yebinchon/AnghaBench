
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_erofs_pagevec_ctor {unsigned int nr; unsigned int index; int * next; int * pages; int curr; } ;
typedef int erofs_vtptr_t ;


 int * z_erofs_pagevec_ctor_next_page (struct z_erofs_pagevec_ctor*,unsigned int) ;
 int z_erofs_pagevec_ctor_pagedown (struct z_erofs_pagevec_ctor*,int) ;

__attribute__((used)) static inline void z_erofs_pagevec_ctor_init(struct z_erofs_pagevec_ctor *ctor,
          unsigned int nr,
          erofs_vtptr_t *pages,
          unsigned int i)
{
 ctor->nr = nr;
 ctor->curr = ctor->next = ((void*)0);
 ctor->pages = pages;

 if (i >= nr) {
  i -= nr;
  z_erofs_pagevec_ctor_pagedown(ctor, 0);
  while (i > ctor->nr) {
   i -= ctor->nr;
   z_erofs_pagevec_ctor_pagedown(ctor, 0);
  }
 }
 ctor->next = z_erofs_pagevec_ctor_next_page(ctor, i);
 ctor->index = i;
}
