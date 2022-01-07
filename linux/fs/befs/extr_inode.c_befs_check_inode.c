
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
typedef int befs_inode_addr ;
struct TYPE_3__ {int flags; int inode_num; int magic1; } ;
typedef TYPE_1__ befs_inode ;
typedef scalar_t__ befs_blocknr_t ;


 int BEFS_BAD_INODE ;
 scalar_t__ BEFS_INODE_IN_USE ;
 scalar_t__ BEFS_INODE_MAGIC1 ;
 int BEFS_OK ;
 int befs_error (struct super_block*,char*,unsigned long,...) ;
 scalar_t__ fs32_to_cpu (struct super_block*,int ) ;
 int fsrun_to_cpu (struct super_block*,int ) ;
 scalar_t__ iaddr2blockno (struct super_block*,int *) ;

int
befs_check_inode(struct super_block *sb, befs_inode *raw_inode,
   befs_blocknr_t inode)
{
 u32 magic1 = fs32_to_cpu(sb, raw_inode->magic1);
 befs_inode_addr ino_num = fsrun_to_cpu(sb, raw_inode->inode_num);
 u32 flags = fs32_to_cpu(sb, raw_inode->flags);


 if (magic1 != BEFS_INODE_MAGIC1) {
  befs_error(sb,
      "Inode has a bad magic header - inode = %lu",
      (unsigned long)inode);
  return BEFS_BAD_INODE;
 }




 if (inode != iaddr2blockno(sb, &ino_num)) {
  befs_error(sb, "inode blocknr field disagrees with vfs "
      "VFS: %lu, Inode %lu", (unsigned long)
      inode, (unsigned long)iaddr2blockno(sb, &ino_num));
  return BEFS_BAD_INODE;
 }





 if (!(flags & BEFS_INODE_IN_USE)) {
  befs_error(sb, "inode is not used - inode = %lu",
      (unsigned long)inode);
  return BEFS_BAD_INODE;
 }

 return BEFS_OK;
}
