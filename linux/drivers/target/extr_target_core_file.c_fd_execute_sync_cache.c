
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int block_size; } ;
struct se_device {TYPE_1__ dev_attrib; } ;
struct se_cmd {int* t_task_cdb; int t_task_lba; scalar_t__ data_length; struct se_device* se_dev; } ;
struct fd_dev {int fd_file; } ;
typedef int sense_reason_t ;
typedef int loff_t ;


 struct fd_dev* FD_DEV (struct se_device*) ;
 int LLONG_MAX ;
 int SAM_STAT_CHECK_CONDITION ;
 int SAM_STAT_GOOD ;
 int pr_err (char*,int) ;
 int target_complete_cmd (struct se_cmd*,int ) ;
 int vfs_fsync_range (int ,int,int,int) ;

__attribute__((used)) static sense_reason_t
fd_execute_sync_cache(struct se_cmd *cmd)
{
 struct se_device *dev = cmd->se_dev;
 struct fd_dev *fd_dev = FD_DEV(dev);
 int immed = (cmd->t_task_cdb[1] & 0x2);
 loff_t start, end;
 int ret;





 if (immed)
  target_complete_cmd(cmd, SAM_STAT_GOOD);




 if (cmd->t_task_lba == 0 && cmd->data_length == 0) {
  start = 0;
  end = LLONG_MAX;
 } else {
  start = cmd->t_task_lba * dev->dev_attrib.block_size;
  if (cmd->data_length)
   end = start + cmd->data_length - 1;
  else
   end = LLONG_MAX;
 }

 ret = vfs_fsync_range(fd_dev->fd_file, start, end, 1);
 if (ret != 0)
  pr_err("FILEIO: vfs_fsync_range() failed: %d\n", ret);

 if (immed)
  return 0;

 if (ret)
  target_complete_cmd(cmd, SAM_STAT_CHECK_CONDITION);
 else
  target_complete_cmd(cmd, SAM_STAT_GOOD);

 return 0;
}
