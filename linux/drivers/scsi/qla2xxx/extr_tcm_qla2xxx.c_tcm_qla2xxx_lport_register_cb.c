
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct tcm_qla2xxx_lport {struct scsi_qla_host* qla_vha; } ;
struct TYPE_4__ {void* target_lport_ptr; } ;
struct scsi_qla_host {TYPE_2__ vha_tgt; struct qla_hw_data* hw; } ;
struct TYPE_3__ {int * tgt_ops; } ;
struct qla_hw_data {TYPE_1__ tgt; } ;


 int tcm_qla2xxx_template ;

__attribute__((used)) static int tcm_qla2xxx_lport_register_cb(struct scsi_qla_host *vha,
      void *target_lport_ptr,
      u64 npiv_wwpn, u64 npiv_wwnn)
{
 struct qla_hw_data *ha = vha->hw;
 struct tcm_qla2xxx_lport *lport =
   (struct tcm_qla2xxx_lport *)target_lport_ptr;



 ha->tgt.tgt_ops = &tcm_qla2xxx_template;
 vha->vha_tgt.target_lport_ptr = target_lport_ptr;
 lport->qla_vha = vha;

 return 0;
}
