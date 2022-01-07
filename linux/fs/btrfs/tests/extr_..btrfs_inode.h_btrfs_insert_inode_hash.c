
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ino; } ;
struct TYPE_2__ {int root; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int __insert_inode_hash (struct inode*,unsigned long) ;
 unsigned long btrfs_inode_hash (int ,int ) ;

__attribute__((used)) static inline void btrfs_insert_inode_hash(struct inode *inode)
{
 unsigned long h = btrfs_inode_hash(inode->i_ino, BTRFS_I(inode)->root);

 __insert_inode_hash(inode, h);
}
