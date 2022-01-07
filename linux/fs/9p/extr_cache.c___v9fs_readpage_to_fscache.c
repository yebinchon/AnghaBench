
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_inode {int vfs_inode; int fscache; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;


 int GFP_KERNEL ;
 int P9_DEBUG_FSC ;
 struct v9fs_inode* V9FS_I (struct inode*) ;
 int fscache_write_page (int ,struct page*,int ,int ) ;
 int i_size_read (int *) ;
 int p9_debug (int ,char*,int,...) ;
 int v9fs_uncache_page (struct inode*,struct page*) ;

void __v9fs_readpage_to_fscache(struct inode *inode, struct page *page)
{
 int ret;
 const struct v9fs_inode *v9inode = V9FS_I(inode);

 p9_debug(P9_DEBUG_FSC, "inode %p page %p\n", inode, page);
 ret = fscache_write_page(v9inode->fscache, page,
     i_size_read(&v9inode->vfs_inode), GFP_KERNEL);
 p9_debug(P9_DEBUG_FSC, "ret =  %d\n", ret);
 if (ret != 0)
  v9fs_uncache_page(inode, page);
}
