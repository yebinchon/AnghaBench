
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int dummy; } ;
struct se_cmd {int t_task_lba; int data_length; struct scatterlist* t_data_sg; struct se_device* se_dev; } ;
struct scatterlist {int offset; } ;
struct block_device {int dummy; } ;
typedef int sense_reason_t ;


 int GFP_KERNEL ;
 int GOOD ;
 int TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ;
 int blkdev_issue_zeroout (struct block_device*,int ,int ,int ,int) ;
 unsigned char* kmap (int ) ;
 int kunmap (int ) ;
 unsigned char* memchr_inv (unsigned char*,int,int ) ;
 int sbc_get_write_same_sectors (struct se_cmd*) ;
 int sg_page (struct scatterlist*) ;
 int target_complete_cmd (struct se_cmd*,int ) ;
 int target_to_linux_sector (struct se_device*,int ) ;

__attribute__((used)) static sense_reason_t
iblock_execute_zero_out(struct block_device *bdev, struct se_cmd *cmd)
{
 struct se_device *dev = cmd->se_dev;
 struct scatterlist *sg = &cmd->t_data_sg[0];
 unsigned char *buf, *not_zero;
 int ret;

 buf = kmap(sg_page(sg)) + sg->offset;
 if (!buf)
  return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;




 not_zero = memchr_inv(buf, 0x00, cmd->data_length);
 kunmap(sg_page(sg));

 if (not_zero)
  return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;

 ret = blkdev_issue_zeroout(bdev,
    target_to_linux_sector(dev, cmd->t_task_lba),
    target_to_linux_sector(dev,
     sbc_get_write_same_sectors(cmd)),
    GFP_KERNEL, 0);
 if (ret)
  return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;

 target_complete_cmd(cmd, GOOD);
 return 0;
}
