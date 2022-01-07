
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {unsigned char* name; int len; } ;
struct inode {unsigned long i_size; int i_sb; } ;
struct buffer_head {unsigned long b_size; scalar_t__ b_data; } ;
struct bfs_dirent {int name; int ino; } ;
struct TYPE_2__ {scalar_t__ i_sblock; } ;


 unsigned long BFS_BSIZE ;
 scalar_t__ BFS_DIRENT_SIZE ;
 TYPE_1__* BFS_I (struct inode*) ;
 int BFS_NAMELEN ;
 scalar_t__ bfs_namecmp (int,unsigned char const*,int ) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ le16_to_cpu (int ) ;
 struct buffer_head* sb_bread (int ,scalar_t__) ;

__attribute__((used)) static struct buffer_head *bfs_find_entry(struct inode *dir,
   const struct qstr *child,
   struct bfs_dirent **res_dir)
{
 unsigned long block = 0, offset = 0;
 struct buffer_head *bh = ((void*)0);
 struct bfs_dirent *de;
 const unsigned char *name = child->name;
 int namelen = child->len;

 *res_dir = ((void*)0);
 if (namelen > BFS_NAMELEN)
  return ((void*)0);

 while (block * BFS_BSIZE + offset < dir->i_size) {
  if (!bh) {
   bh = sb_bread(dir->i_sb, BFS_I(dir)->i_sblock + block);
   if (!bh) {
    block++;
    continue;
   }
  }
  de = (struct bfs_dirent *)(bh->b_data + offset);
  offset += BFS_DIRENT_SIZE;
  if (le16_to_cpu(de->ino) &&
    bfs_namecmp(namelen, name, de->name)) {
   *res_dir = de;
   return bh;
  }
  if (offset < bh->b_size)
   continue;
  brelse(bh);
  bh = ((void*)0);
  offset = 0;
  block++;
 }
 brelse(bh);
 return ((void*)0);
}
