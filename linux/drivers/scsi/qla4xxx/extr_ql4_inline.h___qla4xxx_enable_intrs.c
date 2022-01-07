
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_qla_host {int flags; TYPE_3__* reg; } ;
struct TYPE_5__ {int intr_mask; } ;
struct TYPE_4__ {TYPE_2__ isp4022; } ;
struct TYPE_6__ {int ctrl_status; TYPE_1__ u1; } ;


 int AF_INTERRUPTS_ON ;
 int CSR_SCSI_INTR_ENABLE ;
 int IMR_SCSI_INTR_ENABLE ;
 int is_qla4022 (struct scsi_qla_host*) ;
 int is_qla4032 (struct scsi_qla_host*) ;
 int readl (int *) ;
 int set_bit (int ,int *) ;
 int set_rmask (int ) ;
 int writel (int ,int *) ;

__attribute__((used)) static inline void
__qla4xxx_enable_intrs(struct scsi_qla_host *ha)
{
 if (is_qla4022(ha) | is_qla4032(ha)) {
  writel(set_rmask(IMR_SCSI_INTR_ENABLE),
         &ha->reg->u1.isp4022.intr_mask);
  readl(&ha->reg->u1.isp4022.intr_mask);
 } else {
  writel(set_rmask(CSR_SCSI_INTR_ENABLE), &ha->reg->ctrl_status);
  readl(&ha->reg->ctrl_status);
 }
 set_bit(AF_INTERRUPTS_ON, &ha->flags);
}
