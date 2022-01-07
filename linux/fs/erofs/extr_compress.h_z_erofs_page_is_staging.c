
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ mapping; } ;


 scalar_t__ Z_EROFS_MAPPING_STAGING ;

__attribute__((used)) static inline bool z_erofs_page_is_staging(struct page *page)
{
 return page->mapping == Z_EROFS_MAPPING_STAGING;
}
