
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_erofs_pagevec_ctor {scalar_t__ index; scalar_t__ nr; int * pages; struct page* next; } ;
struct page {int dummy; } ;
typedef enum z_erofs_page_type { ____Placeholder_z_erofs_page_type } z_erofs_page_type ;


 uintptr_t Z_EROFS_PAGE_TYPE_EXCLUSIVE ;
 int __bad_page_type_exclusive () ;
 int erofs_vtptr_t ;
 int tagptr_fold (int ,struct page*,int) ;
 int z_erofs_pagevec_ctor_pagedown (struct z_erofs_pagevec_ctor*,int) ;

__attribute__((used)) static inline bool z_erofs_pagevec_enqueue(struct z_erofs_pagevec_ctor *ctor,
        struct page *page,
        enum z_erofs_page_type type,
        bool *occupied)
{
 *occupied = 0;
 if (!ctor->next && type)
  if (ctor->index + 1 == ctor->nr)
   return 0;

 if (ctor->index >= ctor->nr)
  z_erofs_pagevec_ctor_pagedown(ctor, 0);


 if (Z_EROFS_PAGE_TYPE_EXCLUSIVE != (uintptr_t)((void*)0))
  __bad_page_type_exclusive();


 if (type == (uintptr_t)ctor->next) {
  ctor->next = page;
  *occupied = 1;
 }
 ctor->pages[ctor->index++] = tagptr_fold(erofs_vtptr_t, page, type);
 return 1;
}
