
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_ino; int i_ctime; int i_mtime; TYPE_1__* i_sb; int i_nlink; } ;
struct dentry {int d_name; } ;
struct buffer_head {int dummy; } ;
struct bfs_sb_info {int bfs_lock; } ;
struct bfs_dirent {scalar_t__ ino; } ;
struct TYPE_2__ {char* s_id; } ;


 struct bfs_sb_info* BFS_SB (TYPE_1__*) ;
 int ENOENT ;
 struct buffer_head* bfs_find_entry (struct inode*,int *,struct bfs_dirent**) ;
 int brelse (struct buffer_head*) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int inode_dec_link_count (struct inode*) ;
 scalar_t__ le16_to_cpu (scalar_t__) ;
 int mark_buffer_dirty_inode (struct buffer_head*,struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int printf (char*,char*,scalar_t__,int ) ;
 int set_nlink (struct inode*,int) ;

__attribute__((used)) static int bfs_unlink(struct inode *dir, struct dentry *dentry)
{
 int error = -ENOENT;
 struct inode *inode = d_inode(dentry);
 struct buffer_head *bh;
 struct bfs_dirent *de;
 struct bfs_sb_info *info = BFS_SB(inode->i_sb);

 mutex_lock(&info->bfs_lock);
 bh = bfs_find_entry(dir, &dentry->d_name, &de);
 if (!bh || (le16_to_cpu(de->ino) != inode->i_ino))
  goto out_brelse;

 if (!inode->i_nlink) {
  printf("unlinking non-existent file %s:%lu (nlink=%d)\n",
     inode->i_sb->s_id, inode->i_ino,
     inode->i_nlink);
  set_nlink(inode, 1);
 }
 de->ino = 0;
 mark_buffer_dirty_inode(bh, dir);
 dir->i_ctime = dir->i_mtime = current_time(dir);
 mark_inode_dirty(dir);
 inode->i_ctime = dir->i_ctime;
 inode_dec_link_count(inode);
 error = 0;

out_brelse:
 brelse(bh);
 mutex_unlock(&info->bfs_lock);
 return error;
}
