
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct se_cmd {scalar_t__* t_task_cdb; scalar_t__ t_task_lba; TYPE_2__* se_dev; } ;
typedef scalar_t__ sector_t ;
struct TYPE_4__ {TYPE_1__* transport; } ;
struct TYPE_3__ {scalar_t__ (* get_blocks ) (TYPE_2__*) ;} ;


 scalar_t__ WRITE_SAME ;
 scalar_t__ WRITE_SAME_16 ;
 scalar_t__ get_unaligned_be16 (scalar_t__*) ;
 scalar_t__ get_unaligned_be32 (scalar_t__*) ;
 scalar_t__ stub1 (TYPE_2__*) ;

sector_t sbc_get_write_same_sectors(struct se_cmd *cmd)
{
 u32 num_blocks;

 if (cmd->t_task_cdb[0] == WRITE_SAME)
  num_blocks = get_unaligned_be16(&cmd->t_task_cdb[7]);
 else if (cmd->t_task_cdb[0] == WRITE_SAME_16)
  num_blocks = get_unaligned_be32(&cmd->t_task_cdb[10]);
 else
  num_blocks = get_unaligned_be32(&cmd->t_task_cdb[28]);





 if (num_blocks)
  return num_blocks;

 return cmd->se_dev->transport->get_blocks(cmd->se_dev) -
  cmd->t_task_lba + 1;
}
