
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
struct affs_sb_info {struct buffer_head* s_root_bh; } ;
struct affs_root_tail {int disk_change; } ;


 struct affs_root_tail* AFFS_ROOT_TAIL (struct super_block*,struct buffer_head*) ;
 struct affs_sb_info* AFFS_SB (struct super_block*) ;
 int affs_fix_checksum (struct super_block*,struct buffer_head*) ;
 int affs_secs_to_datestamp (int ,int *) ;
 int ktime_get_real_seconds () ;
 int lock_buffer (struct buffer_head*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int sync_dirty_buffer (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static void
affs_commit_super(struct super_block *sb, int wait)
{
 struct affs_sb_info *sbi = AFFS_SB(sb);
 struct buffer_head *bh = sbi->s_root_bh;
 struct affs_root_tail *tail = AFFS_ROOT_TAIL(sb, bh);

 lock_buffer(bh);
 affs_secs_to_datestamp(ktime_get_real_seconds(), &tail->disk_change);
 affs_fix_checksum(sb, bh);
 unlock_buffer(bh);

 mark_buffer_dirty(bh);
 if (wait)
  sync_dirty_buffer(bh);
}
