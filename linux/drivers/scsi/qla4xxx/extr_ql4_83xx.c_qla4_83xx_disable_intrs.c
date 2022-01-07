
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;


 int qla4_83xx_disable_iocb_intrs (struct scsi_qla_host*) ;
 int qla4_83xx_disable_mbox_intrs (struct scsi_qla_host*) ;

void qla4_83xx_disable_intrs(struct scsi_qla_host *ha)
{
 qla4_83xx_disable_mbox_intrs(ha);
 qla4_83xx_disable_iocb_intrs(ha);
}
