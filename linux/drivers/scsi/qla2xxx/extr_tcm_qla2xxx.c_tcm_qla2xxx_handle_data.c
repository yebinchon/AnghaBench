
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla_tgt_cmd {int cmd_in_wq; int work; int trc_flags; } ;


 int INIT_WORK (int *,int ) ;
 int TRC_DATA_IN ;
 int queue_work_on (int ,int ,int *) ;
 int smp_processor_id () ;
 int tcm_qla2xxx_free_wq ;
 int tcm_qla2xxx_handle_data_work ;

__attribute__((used)) static void tcm_qla2xxx_handle_data(struct qla_tgt_cmd *cmd)
{
 cmd->trc_flags |= TRC_DATA_IN;
 cmd->cmd_in_wq = 1;
 INIT_WORK(&cmd->work, tcm_qla2xxx_handle_data_work);
 queue_work_on(smp_processor_id(), tcm_qla2xxx_free_wq, &cmd->work);
}
