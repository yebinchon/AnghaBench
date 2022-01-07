
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_erofs_pagevec_ctor {unsigned int nr; int * pages; struct page* next; } ;
struct page {int dummy; } ;
typedef int erofs_vtptr_t ;


 int DBG_BUGON (int) ;
 unsigned int const Z_EROFS_PAGE_TYPE_EXCLUSIVE ;
 struct page* tagptr_unfold_ptr (int const) ;
 unsigned int tagptr_unfold_tags (int const) ;

__attribute__((used)) static inline struct page *
z_erofs_pagevec_ctor_next_page(struct z_erofs_pagevec_ctor *ctor,
          unsigned int nr)
{
 unsigned int index;


 if (ctor->next)
  return ctor->next;

 for (index = 0; index < nr; ++index) {
  const erofs_vtptr_t t = ctor->pages[index];
  const unsigned int tags = tagptr_unfold_tags(t);

  if (tags == Z_EROFS_PAGE_TYPE_EXCLUSIVE)
   return tagptr_unfold_ptr(t);
 }
 DBG_BUGON(nr >= ctor->nr);
 return ((void*)0);
}
