
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int mapping; } ;
struct list_head {int dummy; } ;
typedef int gfp_t ;


 int Z_EROFS_MAPPING_STAGING ;
 struct page* erofs_allocpage (struct list_head*,int ,int) ;

__attribute__((used)) static inline struct page *__stagingpage_alloc(struct list_head *pagepool,
            gfp_t gfp)
{
 struct page *page = erofs_allocpage(pagepool, gfp, 1);

 page->mapping = Z_EROFS_MAPPING_STAGING;
 return page;
}
