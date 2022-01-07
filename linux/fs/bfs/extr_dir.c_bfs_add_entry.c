
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct qstr {unsigned char* name; int len; } ;
struct inode {int i_size; void* i_mtime; void* i_ctime; int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct bfs_dirent {unsigned char* name; scalar_t__ ino; } ;
struct TYPE_2__ {int i_sblock; int i_eblock; } ;


 int BFS_BSIZE ;
 scalar_t__ BFS_DIRENT_SIZE ;
 TYPE_1__* BFS_I (struct inode*) ;
 int BFS_NAMELEN ;
 int EIO ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int ENOSPC ;
 int brelse (struct buffer_head*) ;
 scalar_t__ cpu_to_le16 (int ) ;
 void* current_time (struct inode*) ;
 int dprintf (char*,unsigned char const*,int) ;
 int mark_buffer_dirty_inode (struct buffer_head*,struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 struct buffer_head* sb_bread (int ,int) ;

__attribute__((used)) static int bfs_add_entry(struct inode *dir, const struct qstr *child, int ino)
{
 const unsigned char *name = child->name;
 int namelen = child->len;
 struct buffer_head *bh;
 struct bfs_dirent *de;
 int block, sblock, eblock, off, pos;
 int i;

 dprintf("name=%s, namelen=%d\n", name, namelen);

 if (!namelen)
  return -ENOENT;
 if (namelen > BFS_NAMELEN)
  return -ENAMETOOLONG;

 sblock = BFS_I(dir)->i_sblock;
 eblock = BFS_I(dir)->i_eblock;
 for (block = sblock; block <= eblock; block++) {
  bh = sb_bread(dir->i_sb, block);
  if (!bh)
   return -EIO;
  for (off = 0; off < BFS_BSIZE; off += BFS_DIRENT_SIZE) {
   de = (struct bfs_dirent *)(bh->b_data + off);
   if (!de->ino) {
    pos = (block - sblock) * BFS_BSIZE + off;
    if (pos >= dir->i_size) {
     dir->i_size += BFS_DIRENT_SIZE;
     dir->i_ctime = current_time(dir);
    }
    dir->i_mtime = current_time(dir);
    mark_inode_dirty(dir);
    de->ino = cpu_to_le16((u16)ino);
    for (i = 0; i < BFS_NAMELEN; i++)
     de->name[i] =
      (i < namelen) ? name[i] : 0;
    mark_buffer_dirty_inode(bh, dir);
    brelse(bh);
    return 0;
   }
  }
  brelse(bh);
 }
 return -ENOSPC;
}
