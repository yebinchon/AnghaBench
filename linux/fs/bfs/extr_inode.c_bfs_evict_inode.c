
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {unsigned long i_ino; scalar_t__ i_nlink; int i_data; struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
struct bfs_sb_info {scalar_t__ si_lf_eblk; int bfs_lock; int si_imap; int si_freei; int si_freeb; } ;
struct bfs_inode_info {scalar_t__ i_sblock; scalar_t__ i_eblock; scalar_t__ i_dsk_ino; } ;
struct bfs_inode {int dummy; } ;


 struct bfs_inode_info* BFS_I (struct inode*) ;
 struct bfs_sb_info* BFS_SB (struct super_block*) ;
 scalar_t__ IS_ERR (struct bfs_inode*) ;
 int bfs_dump_imap (char*,struct super_block*) ;
 int brelse (struct buffer_head*) ;
 int clear_bit (unsigned long,int ) ;
 int clear_inode (struct inode*) ;
 int dprintf (char*,unsigned long) ;
 struct bfs_inode* find_inode (struct super_block*,unsigned long,struct buffer_head**) ;
 int invalidate_inode_buffers (struct inode*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int memset (struct bfs_inode*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int truncate_inode_pages_final (int *) ;

__attribute__((used)) static void bfs_evict_inode(struct inode *inode)
{
 unsigned long ino = inode->i_ino;
 struct bfs_inode *di;
 struct buffer_head *bh;
 struct super_block *s = inode->i_sb;
 struct bfs_sb_info *info = BFS_SB(s);
 struct bfs_inode_info *bi = BFS_I(inode);

 dprintf("ino=%08lx\n", ino);

 truncate_inode_pages_final(&inode->i_data);
 invalidate_inode_buffers(inode);
 clear_inode(inode);

 if (inode->i_nlink)
  return;

 di = find_inode(s, inode->i_ino, &bh);
 if (IS_ERR(di))
  return;

 mutex_lock(&info->bfs_lock);

 memset(di, 0, sizeof(struct bfs_inode));
 mark_buffer_dirty(bh);
 brelse(bh);

 if (bi->i_dsk_ino) {
  if (bi->i_sblock)
   info->si_freeb += bi->i_eblock + 1 - bi->i_sblock;
  info->si_freei++;
  clear_bit(ino, info->si_imap);
  bfs_dump_imap("evict_inode", s);
 }






 if (info->si_lf_eblk == bi->i_eblock)
  info->si_lf_eblk = bi->i_sblock - 1;
 mutex_unlock(&info->bfs_lock);
}
