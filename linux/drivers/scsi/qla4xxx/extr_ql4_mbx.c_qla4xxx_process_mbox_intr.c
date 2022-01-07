
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_qla_host {int mbox_status_count; TYPE_2__* isp_ops; TYPE_1__* reg; } ;
struct TYPE_4__ {int (* interrupt_service_routine ) (struct scsi_qla_host*,int) ;} ;
struct TYPE_3__ {int ctrl_status; } ;


 int INTR_PENDING ;
 int readl (int *) ;
 int stub1 (struct scsi_qla_host*,int) ;

void qla4xxx_process_mbox_intr(struct scsi_qla_host *ha, int out_count)
{
 int intr_status;

 intr_status = readl(&ha->reg->ctrl_status);
 if (intr_status & INTR_PENDING) {





  ha->mbox_status_count = out_count;
  ha->isp_ops->interrupt_service_routine(ha, intr_status);
 }
}
