
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ext2_sb_info {int s_resgid; int s_resuid; TYPE_1__* s_es; int s_freeblocks_counter; } ;
typedef scalar_t__ ext2_fsblk_t ;
struct TYPE_2__ {int s_r_blocks_count; } ;


 int CAP_SYS_RESOURCE ;
 int GLOBAL_ROOT_GID ;
 int capable (int ) ;
 int current_fsuid () ;
 scalar_t__ gid_eq (int ,int ) ;
 int in_group_p (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ percpu_counter_read_positive (int *) ;
 int uid_eq (int ,int ) ;

__attribute__((used)) static int ext2_has_free_blocks(struct ext2_sb_info *sbi)
{
 ext2_fsblk_t free_blocks, root_blocks;

 free_blocks = percpu_counter_read_positive(&sbi->s_freeblocks_counter);
 root_blocks = le32_to_cpu(sbi->s_es->s_r_blocks_count);
 if (free_blocks < root_blocks + 1 && !capable(CAP_SYS_RESOURCE) &&
  !uid_eq(sbi->s_resuid, current_fsuid()) &&
  (gid_eq(sbi->s_resgid, GLOBAL_ROOT_GID) ||
   !in_group_p (sbi->s_resgid))) {
  return 0;
 }
 return 1;
}
