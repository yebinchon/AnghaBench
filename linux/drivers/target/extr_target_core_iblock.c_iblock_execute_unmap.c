
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_device {int dummy; } ;
struct se_cmd {struct se_device* se_dev; } ;
struct block_device {int dummy; } ;
typedef int sense_reason_t ;
typedef int sector_t ;
struct TYPE_2__ {struct block_device* ibd_bd; } ;


 int GFP_KERNEL ;
 TYPE_1__* IBLOCK_DEV (struct se_device*) ;
 int TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ;
 int blkdev_issue_discard (struct block_device*,int ,int ,int ,int ) ;
 int pr_err (char*,int) ;
 int target_to_linux_sector (struct se_device*,int ) ;

__attribute__((used)) static sense_reason_t
iblock_execute_unmap(struct se_cmd *cmd, sector_t lba, sector_t nolb)
{
 struct block_device *bdev = IBLOCK_DEV(cmd->se_dev)->ibd_bd;
 struct se_device *dev = cmd->se_dev;
 int ret;

 ret = blkdev_issue_discard(bdev,
       target_to_linux_sector(dev, lba),
       target_to_linux_sector(dev, nolb),
       GFP_KERNEL, 0);
 if (ret < 0) {
  pr_err("blkdev_issue_discard() failed: %d\n", ret);
  return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
 }

 return 0;
}
