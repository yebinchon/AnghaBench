
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_inode {int runtime_flags; } ;


 int BTRFS_INODE_READDIO_NEED_LOCK ;
 int set_bit (int ,int *) ;
 int smp_mb () ;

__attribute__((used)) static inline void btrfs_inode_block_unlocked_dio(struct btrfs_inode *inode)
{
 set_bit(BTRFS_INODE_READDIO_NEED_LOCK, &inode->runtime_flags);
 smp_mb();
}
