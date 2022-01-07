
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_qla_host {TYPE_1__* isp_ops; } ;
struct TYPE_2__ {int (* idc_unlock ) (struct scsi_qla_host*) ;int (* idc_lock ) (struct scsi_qla_host*) ;} ;


 int __qla4_83xx_disable_pause (struct scsi_qla_host*) ;
 int qla4_83xx_dump_pause_control_regs (struct scsi_qla_host*) ;
 int qla4_83xx_eport_init (struct scsi_qla_host*) ;
 int stub1 (struct scsi_qla_host*) ;
 int stub2 (struct scsi_qla_host*) ;

void qla4_83xx_disable_pause(struct scsi_qla_host *ha)
{
 ha->isp_ops->idc_lock(ha);

 qla4_83xx_eport_init(ha);
 qla4_83xx_dump_pause_control_regs(ha);
 __qla4_83xx_disable_pause(ha);
 ha->isp_ops->idc_unlock(ha);
}
