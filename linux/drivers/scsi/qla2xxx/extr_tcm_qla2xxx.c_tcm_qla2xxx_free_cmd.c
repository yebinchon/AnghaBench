
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qla_tgt_cmd {int cmd_in_wq; int trc_flags; int work; TYPE_2__* qpair; } ;
struct TYPE_3__ {int core_qla_free_cmd; } ;
struct TYPE_4__ {TYPE_1__ tgt_counters; } ;


 int INIT_WORK (int *,int ) ;
 int TRC_CMD_DONE ;
 int WARN_ON (int) ;
 int queue_work_on (int ,int ,int *) ;
 int smp_processor_id () ;
 int tcm_qla2xxx_complete_free ;
 int tcm_qla2xxx_free_wq ;

__attribute__((used)) static void tcm_qla2xxx_free_cmd(struct qla_tgt_cmd *cmd)
{
 cmd->qpair->tgt_counters.core_qla_free_cmd++;
 cmd->cmd_in_wq = 1;

 WARN_ON(cmd->trc_flags & TRC_CMD_DONE);
 cmd->trc_flags |= TRC_CMD_DONE;

 INIT_WORK(&cmd->work, tcm_qla2xxx_complete_free);
 queue_work_on(smp_processor_id(), tcm_qla2xxx_free_wq, &cmd->work);
}
