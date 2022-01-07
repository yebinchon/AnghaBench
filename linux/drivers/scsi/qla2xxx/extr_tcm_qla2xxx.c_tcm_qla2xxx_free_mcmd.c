
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla_tgt_mgmt_cmd {int free_work; } ;


 int INIT_WORK (int *,int ) ;
 int queue_work (int ,int *) ;
 int tcm_qla2xxx_complete_mcmd ;
 int tcm_qla2xxx_free_wq ;

__attribute__((used)) static void tcm_qla2xxx_free_mcmd(struct qla_tgt_mgmt_cmd *mcmd)
{
 INIT_WORK(&mcmd->free_work, tcm_qla2xxx_complete_mcmd);
 queue_work(tcm_qla2xxx_free_wq, &mcmd->free_work);
}
