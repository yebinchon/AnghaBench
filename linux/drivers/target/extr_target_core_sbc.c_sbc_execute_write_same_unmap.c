
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int t_task_lba; struct sbc_ops* protocol_data; } ;
struct sbc_ops {scalar_t__ (* execute_unmap ) (struct se_cmd*,int ,scalar_t__) ;} ;
typedef scalar_t__ sense_reason_t ;
typedef scalar_t__ sector_t ;


 int GOOD ;
 scalar_t__ sbc_get_write_same_sectors (struct se_cmd*) ;
 scalar_t__ stub1 (struct se_cmd*,int ,scalar_t__) ;
 int target_complete_cmd (struct se_cmd*,int ) ;

__attribute__((used)) static sense_reason_t
sbc_execute_write_same_unmap(struct se_cmd *cmd)
{
 struct sbc_ops *ops = cmd->protocol_data;
 sector_t nolb = sbc_get_write_same_sectors(cmd);
 sense_reason_t ret;

 if (nolb) {
  ret = ops->execute_unmap(cmd, cmd->t_task_lba, nolb);
  if (ret)
   return ret;
 }

 target_complete_cmd(cmd, GOOD);
 return 0;
}
