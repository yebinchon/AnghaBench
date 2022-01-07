
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_inode {int runtime_flags; } ;


 int BTRFS_INODE_READDIO_NEED_LOCK ;
 int clear_bit (int ,int *) ;
 int smp_mb__before_atomic () ;

__attribute__((used)) static inline void btrfs_inode_resume_unlocked_dio(struct btrfs_inode *inode)
{
 smp_mb__before_atomic();
 clear_bit(BTRFS_INODE_READDIO_NEED_LOCK, &inode->runtime_flags);
}
