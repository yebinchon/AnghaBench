
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct super_block {char* s_id; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct bfs_inode {int dummy; } ;
struct TYPE_2__ {int si_lasti; } ;


 int BFS_INODES_PER_BLOCK ;
 int BFS_ROOT_INO ;
 TYPE_1__* BFS_SB (struct super_block*) ;
 int EIO ;
 struct bfs_inode* ERR_PTR (int ) ;
 int printf (char*,char*,int) ;
 struct buffer_head* sb_bread (struct super_block*,int) ;

__attribute__((used)) static struct bfs_inode *find_inode(struct super_block *sb, u16 ino, struct buffer_head **p)
{
 if ((ino < BFS_ROOT_INO) || (ino > BFS_SB(sb)->si_lasti)) {
  printf("Bad inode number %s:%08x\n", sb->s_id, ino);
  return ERR_PTR(-EIO);
 }

 ino -= BFS_ROOT_INO;

 *p = sb_bread(sb, 1 + ino / BFS_INODES_PER_BLOCK);
 if (!*p) {
  printf("Unable to read inode %s:%08x\n", sb->s_id, ino);
  return ERR_PTR(-EIO);
 }

 return (struct bfs_inode *)(*p)->b_data + ino % BFS_INODES_PER_BLOCK;
}
