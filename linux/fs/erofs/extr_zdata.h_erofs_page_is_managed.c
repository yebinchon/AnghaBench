
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ mapping; } ;
struct erofs_sb_info {int dummy; } ;


 scalar_t__ MNGD_MAPPING (struct erofs_sb_info const*) ;

__attribute__((used)) static inline bool erofs_page_is_managed(const struct erofs_sb_info *sbi,
      struct page *page)
{
 return page->mapping == MNGD_MAPPING(sbi);
}
