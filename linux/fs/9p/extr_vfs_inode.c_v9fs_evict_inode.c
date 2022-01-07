
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_inode {int * writeback_fid; } ;
struct inode {int i_data; } ;


 struct v9fs_inode* V9FS_I (struct inode*) ;
 int clear_inode (struct inode*) ;
 int filemap_fdatawrite (int *) ;
 int p9_client_clunk (int *) ;
 int truncate_inode_pages_final (int *) ;
 int v9fs_cache_inode_put_cookie (struct inode*) ;

void v9fs_evict_inode(struct inode *inode)
{
 struct v9fs_inode *v9inode = V9FS_I(inode);

 truncate_inode_pages_final(&inode->i_data);
 clear_inode(inode);
 filemap_fdatawrite(&inode->i_data);

 v9fs_cache_inode_put_cookie(inode);

 if (v9inode->writeback_fid) {
  p9_client_clunk(v9inode->writeback_fid);
  v9inode->writeback_fid = ((void*)0);
 }
}
