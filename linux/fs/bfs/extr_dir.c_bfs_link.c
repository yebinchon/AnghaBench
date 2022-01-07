
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ctime; int i_ino; int i_sb; } ;
struct dentry {int d_name; } ;
struct bfs_sb_info {int bfs_lock; } ;


 struct bfs_sb_info* BFS_SB (int ) ;
 int bfs_add_entry (struct inode*,int *,int ) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int ihold (struct inode*) ;
 int inc_nlink (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bfs_link(struct dentry *old, struct inode *dir,
      struct dentry *new)
{
 struct inode *inode = d_inode(old);
 struct bfs_sb_info *info = BFS_SB(inode->i_sb);
 int err;

 mutex_lock(&info->bfs_lock);
 err = bfs_add_entry(dir, &new->d_name, inode->i_ino);
 if (err) {
  mutex_unlock(&info->bfs_lock);
  return err;
 }
 inc_nlink(inode);
 inode->i_ctime = current_time(inode);
 mark_inode_dirty(inode);
 ihold(inode);
 d_instantiate(new, inode);
 mutex_unlock(&info->bfs_lock);
 return 0;
}
