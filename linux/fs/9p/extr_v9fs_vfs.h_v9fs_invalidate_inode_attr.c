
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_inode {int cache_validity; } ;
struct inode {int dummy; } ;


 struct v9fs_inode* V9FS_I (struct inode*) ;
 int V9FS_INO_INVALID_ATTR ;

__attribute__((used)) static inline void v9fs_invalidate_inode_attr(struct inode *inode)
{
 struct v9fs_inode *v9inode;
 v9inode = V9FS_I(inode);
 v9inode->cache_validity |= V9FS_INO_INVALID_ATTR;
 return;
}
