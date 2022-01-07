
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPageChecked (struct page*) ;
 int put_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void btrfs_drop_pages(struct page **pages, size_t num_pages)
{
 size_t i;
 for (i = 0; i < num_pages; i++) {






  ClearPageChecked(pages[i]);
  unlock_page(pages[i]);
  put_page(pages[i]);
 }
}
