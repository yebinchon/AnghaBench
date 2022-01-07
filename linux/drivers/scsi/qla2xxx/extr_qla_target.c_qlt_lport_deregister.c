
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * target_lport_ptr; } ;
struct scsi_qla_host {TYPE_1__ vha_tgt; struct Scsi_Host* host; struct qla_hw_data* hw; } ;
struct TYPE_4__ {int * tgt_ops; } ;
struct qla_hw_data {TYPE_2__ tgt; } ;
struct Scsi_Host {int dummy; } ;


 int scsi_host_put (struct Scsi_Host*) ;

void qlt_lport_deregister(struct scsi_qla_host *vha)
{
 struct qla_hw_data *ha = vha->hw;
 struct Scsi_Host *sh = vha->host;



 vha->vha_tgt.target_lport_ptr = ((void*)0);
 ha->tgt.tgt_ops = ((void*)0);



 scsi_host_put(sh);
}
