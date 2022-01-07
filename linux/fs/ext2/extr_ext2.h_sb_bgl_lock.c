
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_sb_info {int s_blockgroup_lock; } ;
typedef int spinlock_t ;


 int * bgl_lock_ptr (int ,unsigned int) ;

__attribute__((used)) static inline spinlock_t *
sb_bgl_lock(struct ext2_sb_info *sbi, unsigned int block_group)
{
 return bgl_lock_ptr(sbi->s_blockgroup_lock, block_group);
}
