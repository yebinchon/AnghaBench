
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;
struct page {int dummy; } ;


 int __free_page (struct page*) ;
 int atomic_dec (int *) ;
 int global_db_count ;
 struct page* radix_tree_delete (struct radix_tree_root*,int) ;

__attribute__((used)) static void tcmu_blocks_release(struct radix_tree_root *blocks,
    int start, int end)
{
 int i;
 struct page *page;

 for (i = start; i < end; i++) {
  page = radix_tree_delete(blocks, i);
  if (page) {
   __free_page(page);
   atomic_dec(&global_db_count);
  }
 }
}
