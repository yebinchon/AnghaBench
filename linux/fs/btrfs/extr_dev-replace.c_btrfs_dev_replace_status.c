
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int progress_1000; void* num_uncorrectable_read_errors; void* num_write_errors; int time_stopped; int time_started; int replace_state; } ;
struct btrfs_ioctl_dev_replace_args {TYPE_1__ status; int result; } ;
struct btrfs_dev_replace {int rwsem; int num_uncorrectable_read_errors; int num_write_errors; int time_stopped; int time_started; int replace_state; } ;
struct btrfs_fs_info {struct btrfs_dev_replace dev_replace; } ;


 int BTRFS_IOCTL_DEV_REPLACE_RESULT_NO_ERROR ;
 void* atomic64_read (int *) ;
 int btrfs_dev_replace_progress (struct btrfs_fs_info*) ;
 int down_read (int *) ;
 int up_read (int *) ;

void btrfs_dev_replace_status(struct btrfs_fs_info *fs_info,
         struct btrfs_ioctl_dev_replace_args *args)
{
 struct btrfs_dev_replace *dev_replace = &fs_info->dev_replace;

 down_read(&dev_replace->rwsem);


 args->result = BTRFS_IOCTL_DEV_REPLACE_RESULT_NO_ERROR;
 args->status.replace_state = dev_replace->replace_state;
 args->status.time_started = dev_replace->time_started;
 args->status.time_stopped = dev_replace->time_stopped;
 args->status.num_write_errors =
  atomic64_read(&dev_replace->num_write_errors);
 args->status.num_uncorrectable_read_errors =
  atomic64_read(&dev_replace->num_uncorrectable_read_errors);
 args->status.progress_1000 = btrfs_dev_replace_progress(fs_info);
 up_read(&dev_replace->rwsem);
}
