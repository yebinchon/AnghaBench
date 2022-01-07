
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_inode {int * fscache; } ;
struct inode {int dummy; } ;


 int P9_DEBUG_FSC ;
 struct v9fs_inode* V9FS_I (struct inode*) ;
 int fscache_relinquish_cookie (int *,int *,int) ;
 int p9_debug (int ,char*,struct inode*,int *) ;

void v9fs_cache_inode_flush_cookie(struct inode *inode)
{
 struct v9fs_inode *v9inode = V9FS_I(inode);

 if (!v9inode->fscache)
  return;
 p9_debug(P9_DEBUG_FSC, "inode %p flush cookie %p\n",
   inode, v9inode->fscache);

 fscache_relinquish_cookie(v9inode->fscache, ((void*)0), 1);
 v9inode->fscache = ((void*)0);
}
