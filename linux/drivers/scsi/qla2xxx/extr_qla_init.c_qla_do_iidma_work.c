
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;
typedef int fc_port_t ;


 int qla24xx_update_fcport_fcp_prio (struct scsi_qla_host*,int *) ;
 int qla2x00_iidma_fcport (struct scsi_qla_host*,int *) ;

void qla_do_iidma_work(struct scsi_qla_host *vha, fc_port_t *fcport)
{
 qla2x00_iidma_fcport(vha, fcport);
 qla24xx_update_fcport_fcp_prio(vha, fcport);
}
