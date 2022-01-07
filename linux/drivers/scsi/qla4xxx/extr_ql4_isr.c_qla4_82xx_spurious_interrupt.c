
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_6__ {int tgt_mask_reg; } ;
struct scsi_qla_host {int spurious_int_count; TYPE_3__ nx_legacy_intr; TYPE_2__* pdev; TYPE_1__* qla4_82xx_reg; } ;
struct TYPE_5__ {int msix_enabled; int msi_enabled; } ;
struct TYPE_4__ {int host_int; } ;


 int DEBUG2 (int ) ;
 int KERN_INFO ;
 scalar_t__ is_qla8022 (struct scsi_qla_host*) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*) ;
 int qla4_82xx_wr_32 (struct scsi_qla_host*,int ,int) ;
 int writel (int ,int *) ;

__attribute__((used)) static void qla4_82xx_spurious_interrupt(struct scsi_qla_host *ha,
    uint8_t reqs_count)
{
 if (reqs_count)
  return;

 DEBUG2(ql4_printk(KERN_INFO, ha, "Spurious Interrupt\n"));
 if (is_qla8022(ha)) {
  writel(0, &ha->qla4_82xx_reg->host_int);
  if (!ha->pdev->msi_enabled && !ha->pdev->msix_enabled)
   qla4_82xx_wr_32(ha, ha->nx_legacy_intr.tgt_mask_reg,
       0xfbff);
 }
 ha->spurious_int_count++;
}
