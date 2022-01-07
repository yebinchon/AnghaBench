
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct scsi_qla_host {TYPE_1__* qla4_82xx_reg; int flags; } ;
struct TYPE_2__ {int host_int; int * mailbox_out; } ;


 int AF_INIT_DONE ;
 int HSRX_RISC_IOCB_INT ;
 int HSRX_RISC_MB_INT ;
 int qla4xxx_isr_decode_mailbox (struct scsi_qla_host*,int ) ;
 int qla4xxx_process_response_queue (struct scsi_qla_host*) ;
 int readl (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int writel (int ,int *) ;

void qla4_82xx_interrupt_service_routine(struct scsi_qla_host *ha,
    uint32_t intr_status)
{

 if ((intr_status & HSRX_RISC_IOCB_INT) &&
     test_bit(AF_INIT_DONE, &ha->flags))
  qla4xxx_process_response_queue(ha);


 if (intr_status & HSRX_RISC_MB_INT)
  qla4xxx_isr_decode_mailbox(ha,
      readl(&ha->qla4_82xx_reg->mailbox_out[0]));


 writel(0, &ha->qla4_82xx_reg->host_int);
 readl(&ha->qla4_82xx_reg->host_int);
}
