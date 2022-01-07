
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct scsi_qla_host {TYPE_1__* reg; } ;
struct TYPE_2__ {int ctrl_status; int * mailbox; } ;


 int CSR_SCSI_COMPLETION_INTR ;
 int CSR_SCSI_PROCESSOR_INTR ;
 int qla4xxx_isr_decode_mailbox (struct scsi_qla_host*,int ) ;
 int qla4xxx_process_response_queue (struct scsi_qla_host*) ;
 int readl (int *) ;
 int set_rmask (int) ;
 int writel (int ,int *) ;

void qla4xxx_interrupt_service_routine(struct scsi_qla_host * ha,
           uint32_t intr_status)
{

 if (intr_status & CSR_SCSI_COMPLETION_INTR)
  qla4xxx_process_response_queue(ha);


 if (intr_status & CSR_SCSI_PROCESSOR_INTR) {
  qla4xxx_isr_decode_mailbox(ha,
        readl(&ha->reg->mailbox[0]));


  writel(set_rmask(CSR_SCSI_PROCESSOR_INTR),
         &ha->reg->ctrl_status);
  readl(&ha->reg->ctrl_status);
 }
}
