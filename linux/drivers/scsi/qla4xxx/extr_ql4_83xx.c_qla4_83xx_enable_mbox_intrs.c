
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct scsi_qla_host {int flags; TYPE_1__* qla4_83xx_reg; } ;
struct TYPE_2__ {int leg_int_mask; int mbox_int; } ;


 int AF_83XX_MBOX_INTR_ON ;
 int INT_ENABLE_FW_MB ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int writel (int ,int *) ;

void qla4_83xx_enable_mbox_intrs(struct scsi_qla_host *ha)
{
 uint32_t mb_int;

 if (!test_bit(AF_83XX_MBOX_INTR_ON, &ha->flags)) {
  mb_int = INT_ENABLE_FW_MB;
  writel(mb_int, &ha->qla4_83xx_reg->mbox_int);
  writel(0, &ha->qla4_83xx_reg->leg_int_mask);
  set_bit(AF_83XX_MBOX_INTR_ON, &ha->flags);
 }
}
