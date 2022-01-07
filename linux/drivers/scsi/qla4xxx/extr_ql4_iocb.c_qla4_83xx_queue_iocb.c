
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_qla_host {TYPE_1__* qla4_83xx_reg; int request_in; } ;
struct TYPE_2__ {int req_q_in; } ;


 int readl (int *) ;
 int writel (int ,int *) ;

void qla4_83xx_queue_iocb(struct scsi_qla_host *ha)
{
 writel(ha->request_in, &ha->qla4_83xx_reg->req_q_in);
 readl(&ha->qla4_83xx_reg->req_q_in);
}
