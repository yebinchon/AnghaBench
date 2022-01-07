
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v9fs_inode {int fscache; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {struct inode* host; } ;


 int BUG_ON (int) ;
 struct v9fs_inode* V9FS_I (struct inode*) ;
 int fscache_maybe_release_page (int ,struct page*,int ) ;

int __v9fs_fscache_release_page(struct page *page, gfp_t gfp)
{
 struct inode *inode = page->mapping->host;
 struct v9fs_inode *v9inode = V9FS_I(inode);

 BUG_ON(!v9inode->fscache);

 return fscache_maybe_release_page(v9inode->fscache, page, gfp);
}
