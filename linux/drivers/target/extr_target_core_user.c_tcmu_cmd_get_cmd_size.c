
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmu_cmd {struct se_cmd* se_cmd; } ;
struct se_cmd {int t_task_cdb; } ;


 int TCMU_OP_ALIGN_SIZE ;
 int WARN_ON (size_t) ;
 size_t round_up (int ,int) ;
 int scsi_command_size (int ) ;

__attribute__((used)) static inline size_t tcmu_cmd_get_cmd_size(struct tcmu_cmd *tcmu_cmd,
        size_t base_command_size)
{
 struct se_cmd *se_cmd = tcmu_cmd->se_cmd;
 size_t command_size;

 command_size = base_command_size +
  round_up(scsi_command_size(se_cmd->t_task_cdb),
    TCMU_OP_ALIGN_SIZE);

 WARN_ON(command_size & (TCMU_OP_ALIGN_SIZE-1));

 return command_size;
}
