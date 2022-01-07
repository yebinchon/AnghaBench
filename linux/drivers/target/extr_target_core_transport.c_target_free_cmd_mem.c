
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int se_cmd_flags; scalar_t__ t_task_cdb; scalar_t__ __t_task_cdb; int se_tmr_req; } ;


 int SCF_SCSI_TMR_CDB ;
 int core_tmr_release_req (int ) ;
 int kfree (scalar_t__) ;
 int transport_free_pages (struct se_cmd*) ;

__attribute__((used)) static void target_free_cmd_mem(struct se_cmd *cmd)
{
 transport_free_pages(cmd);

 if (cmd->se_cmd_flags & SCF_SCSI_TMR_CDB)
  core_tmr_release_req(cmd->se_tmr_req);
 if (cmd->t_task_cdb != cmd->__t_task_cdb)
  kfree(cmd->t_task_cdb);
}
