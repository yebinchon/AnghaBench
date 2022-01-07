
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int umode_t ;
struct super_block {int dummy; } ;
struct inode {unsigned long i_ino; TYPE_1__* i_mapping; int * i_fop; int * i_op; scalar_t__ i_blocks; int i_ctime; int i_atime; int i_mtime; struct super_block* i_sb; } ;
struct dentry {int d_name; } ;
struct bfs_sb_info {int si_lasti; int bfs_lock; int si_freei; int si_imap; } ;
struct TYPE_4__ {unsigned long i_dsk_ino; scalar_t__ i_eblock; scalar_t__ i_sblock; } ;
struct TYPE_3__ {int * a_ops; } ;


 TYPE_2__* BFS_I (struct inode*) ;
 struct bfs_sb_info* BFS_SB (struct super_block*) ;
 int ENOMEM ;
 int ENOSPC ;
 int bfs_add_entry (struct inode*,int *,unsigned long) ;
 int bfs_aops ;
 int bfs_dump_imap (char*,struct super_block*) ;
 int bfs_file_inops ;
 int bfs_file_operations ;
 int current_time (struct inode*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 unsigned long find_first_zero_bit (int ,int) ;
 int inode_dec_link_count (struct inode*) ;
 int inode_init_owner (struct inode*,struct inode*,int ) ;
 int insert_inode_hash (struct inode*) ;
 int iput (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct inode* new_inode (struct super_block*) ;
 int set_bit (unsigned long,int ) ;

__attribute__((used)) static int bfs_create(struct inode *dir, struct dentry *dentry, umode_t mode,
      bool excl)
{
 int err;
 struct inode *inode;
 struct super_block *s = dir->i_sb;
 struct bfs_sb_info *info = BFS_SB(s);
 unsigned long ino;

 inode = new_inode(s);
 if (!inode)
  return -ENOMEM;
 mutex_lock(&info->bfs_lock);
 ino = find_first_zero_bit(info->si_imap, info->si_lasti + 1);
 if (ino > info->si_lasti) {
  mutex_unlock(&info->bfs_lock);
  iput(inode);
  return -ENOSPC;
 }
 set_bit(ino, info->si_imap);
 info->si_freei--;
 inode_init_owner(inode, dir, mode);
 inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
 inode->i_blocks = 0;
 inode->i_op = &bfs_file_inops;
 inode->i_fop = &bfs_file_operations;
 inode->i_mapping->a_ops = &bfs_aops;
 inode->i_ino = ino;
 BFS_I(inode)->i_dsk_ino = ino;
 BFS_I(inode)->i_sblock = 0;
 BFS_I(inode)->i_eblock = 0;
 insert_inode_hash(inode);
        mark_inode_dirty(inode);
 bfs_dump_imap("create", s);

 err = bfs_add_entry(dir, &dentry->d_name, inode->i_ino);
 if (err) {
  inode_dec_link_count(inode);
  mutex_unlock(&info->bfs_lock);
  iput(inode);
  return err;
 }
 mutex_unlock(&info->bfs_lock);
 d_instantiate(dentry, inode);
 return 0;
}
