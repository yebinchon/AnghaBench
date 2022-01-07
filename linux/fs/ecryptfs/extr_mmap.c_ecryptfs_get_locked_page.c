
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_mapping; } ;
typedef int loff_t ;


 int IS_ERR (struct page*) ;
 int lock_page (struct page*) ;
 struct page* read_mapping_page (int ,int ,int *) ;

struct page *ecryptfs_get_locked_page(struct inode *inode, loff_t index)
{
 struct page *page = read_mapping_page(inode->i_mapping, index, ((void*)0));
 if (!IS_ERR(page))
  lock_page(page);
 return page;
}
