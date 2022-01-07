
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tgt_host_action_mutex; int tgt_mutex; int * qla_tgt; } ;
struct scsi_qla_host {TYPE_1__ vha_tgt; } ;
struct TYPE_4__ {int atio_q_length; } ;
struct qla_hw_data {TYPE_2__ tgt; } ;


 int ATIO_ENTRY_CNT_24XX ;
 int mutex_init (int *) ;
 int qlt_add_target (struct qla_hw_data*,struct scsi_qla_host*) ;
 int qlt_clear_mode (struct scsi_qla_host*) ;

void
qlt_vport_create(struct scsi_qla_host *vha, struct qla_hw_data *ha)
{
 vha->vha_tgt.qla_tgt = ((void*)0);

 mutex_init(&vha->vha_tgt.tgt_mutex);
 mutex_init(&vha->vha_tgt.tgt_host_action_mutex);

 qlt_clear_mode(vha);







 ha->tgt.atio_q_length = ATIO_ENTRY_CNT_24XX;

 qlt_add_target(ha, vha);
}
