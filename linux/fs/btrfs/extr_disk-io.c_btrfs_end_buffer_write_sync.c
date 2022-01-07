
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {scalar_t__ b_private; } ;
struct btrfs_device {int name; int fs_info; } ;


 int BTRFS_DEV_STAT_WRITE_ERRS ;
 int btrfs_dev_stat_inc_and_print (struct btrfs_device*,int ) ;
 int btrfs_warn_rl_in_rcu (int ,char*,int ) ;
 int clear_buffer_uptodate (struct buffer_head*) ;
 int put_bh (struct buffer_head*) ;
 int rcu_str_deref (int ) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static void btrfs_end_buffer_write_sync(struct buffer_head *bh, int uptodate)
{
 if (uptodate) {
  set_buffer_uptodate(bh);
 } else {
  struct btrfs_device *device = (struct btrfs_device *)
   bh->b_private;

  btrfs_warn_rl_in_rcu(device->fs_info,
    "lost page write due to IO error on %s",
       rcu_str_deref(device->name));



  clear_buffer_uptodate(bh);
  btrfs_dev_stat_inc_and_print(device, BTRFS_DEV_STAT_WRITE_ERRS);
 }
 unlock_buffer(bh);
 put_bh(bh);
}
