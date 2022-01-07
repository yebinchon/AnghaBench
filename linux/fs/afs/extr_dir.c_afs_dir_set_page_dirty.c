
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG () ;

__attribute__((used)) static int afs_dir_set_page_dirty(struct page *page)
{
 BUG();
}
