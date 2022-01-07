
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ino; } ;
struct btrfs_iget_args {int root; int * location; } ;
struct TYPE_2__ {int root; int location; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int btrfs_find_actor ;
 int btrfs_inode_hash (int ,int ) ;
 int insert_inode_locked4 (struct inode*,int ,int ,struct btrfs_iget_args*) ;

__attribute__((used)) static int btrfs_insert_inode_locked(struct inode *inode)
{
 struct btrfs_iget_args args;
 args.location = &BTRFS_I(inode)->location;
 args.root = BTRFS_I(inode)->root;

 return insert_inode_locked4(inode,
     btrfs_inode_hash(inode->i_ino, BTRFS_I(inode)->root),
     btrfs_find_actor, &args);
}
