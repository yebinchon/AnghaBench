
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
struct bfs_sb_info {int bfs_lock; } ;
struct bfs_dirent {int ino; } ;


 scalar_t__ BFS_NAMELEN ;
 struct bfs_sb_info* BFS_SB (int ) ;
 int ENAMETOOLONG ;
 struct dentry* ERR_PTR (int ) ;
 struct buffer_head* bfs_find_entry (struct inode*,TYPE_1__*,struct bfs_dirent**) ;
 struct inode* bfs_iget (int ,unsigned long) ;
 int brelse (struct buffer_head*) ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct dentry *bfs_lookup(struct inode *dir, struct dentry *dentry,
      unsigned int flags)
{
 struct inode *inode = ((void*)0);
 struct buffer_head *bh;
 struct bfs_dirent *de;
 struct bfs_sb_info *info = BFS_SB(dir->i_sb);

 if (dentry->d_name.len > BFS_NAMELEN)
  return ERR_PTR(-ENAMETOOLONG);

 mutex_lock(&info->bfs_lock);
 bh = bfs_find_entry(dir, &dentry->d_name, &de);
 if (bh) {
  unsigned long ino = (unsigned long)le16_to_cpu(de->ino);
  brelse(bh);
  inode = bfs_iget(dir->i_sb, ino);
 }
 mutex_unlock(&info->bfs_lock);
 return d_splice_alias(inode, dentry);
}
