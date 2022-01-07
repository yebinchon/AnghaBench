
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct scsi_qla_host {TYPE_1__* qla4_83xx_reg; } ;
struct TYPE_2__ {int mb_int_mask; int risc_intr; int * mailbox_out; } ;


 int qla4xxx_isr_decode_mailbox (struct scsi_qla_host*,int ) ;
 int qla4xxx_process_response_queue (struct scsi_qla_host*) ;
 int readl (int *) ;
 int writel (int ,int *) ;

void qla4_83xx_interrupt_service_routine(struct scsi_qla_host *ha,
      uint32_t intr_status)
{

 if (intr_status) {
  qla4xxx_isr_decode_mailbox(ha,
    readl(&ha->qla4_83xx_reg->mailbox_out[0]));

  writel(0, &ha->qla4_83xx_reg->risc_intr);
 } else {
  qla4xxx_process_response_queue(ha);
 }


 writel(0, &ha->qla4_83xx_reg->mb_int_mask);
}
