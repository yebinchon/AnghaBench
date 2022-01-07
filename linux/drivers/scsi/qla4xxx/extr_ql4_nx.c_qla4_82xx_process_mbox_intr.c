
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int tgt_mask_reg; } ;
struct scsi_qla_host {int mbox_status_count; TYPE_3__ nx_legacy_intr; TYPE_2__* pdev; int flags; TYPE_1__* isp_ops; TYPE_4__* qla4_82xx_reg; } ;
struct TYPE_8__ {int host_status; int host_int; } ;
struct TYPE_6__ {int msix_enabled; int msi_enabled; } ;
struct TYPE_5__ {int (* interrupt_service_routine ) (struct scsi_qla_host*,int) ;} ;


 int AF_INTERRUPTS_ON ;
 int ISRX_82XX_RISC_INT ;
 int qla4_82xx_wr_32 (struct scsi_qla_host*,int ,int) ;
 int readl (int *) ;
 int stub1 (struct scsi_qla_host*,int) ;
 scalar_t__ test_bit (int ,int *) ;

void qla4_82xx_process_mbox_intr(struct scsi_qla_host *ha, int out_count)
{
 int intr_status;

 intr_status = readl(&ha->qla4_82xx_reg->host_int);
 if (intr_status & ISRX_82XX_RISC_INT) {
  ha->mbox_status_count = out_count;
  intr_status = readl(&ha->qla4_82xx_reg->host_status);
  ha->isp_ops->interrupt_service_routine(ha, intr_status);

  if (test_bit(AF_INTERRUPTS_ON, &ha->flags) &&
      (!ha->pdev->msi_enabled && !ha->pdev->msix_enabled))
   qla4_82xx_wr_32(ha, ha->nx_legacy_intr.tgt_mask_reg,
     0xfbff);
 }
}
