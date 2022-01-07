
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qla_tgt; } ;
struct scsi_qla_host {TYPE_1__ vha_tgt; int host_no; scalar_t__ fc_vport; } ;
struct qla_hw_data {int dummy; } ;


 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int ,struct qla_hw_data*) ;
 int ql_dbg_tgt ;
 int qlt_init_term_exchange (struct scsi_qla_host*) ;
 int qlt_release (int ) ;

int qlt_remove_target(struct qla_hw_data *ha, struct scsi_qla_host *vha)
{
 if (!vha->vha_tgt.qla_tgt)
  return 0;

 if (vha->fc_vport) {
  qlt_release(vha->vha_tgt.qla_tgt);
  return 0;
 }


 qlt_init_term_exchange(vha);

 ql_dbg(ql_dbg_tgt, vha, 0xe03c, "Unregistering target for host %ld(%p)",
     vha->host_no, ha);
 qlt_release(vha->vha_tgt.qla_tgt);

 return 0;
}
