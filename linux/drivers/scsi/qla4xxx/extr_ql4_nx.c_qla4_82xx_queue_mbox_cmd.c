
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct scsi_qla_host {TYPE_1__* qla4_82xx_reg; } ;
struct TYPE_2__ {int hint; int * mailbox_in; } ;


 int HINT_MBX_INT_PENDING ;
 int readl (int *) ;
 int writel (int ,int *) ;

void qla4_82xx_queue_mbox_cmd(struct scsi_qla_host *ha, uint32_t *mbx_cmd,
         int in_count)
{
 int i;


 for (i = 1; i < in_count; i++)
  writel(mbx_cmd[i], &ha->qla4_82xx_reg->mailbox_in[i]);


 writel(mbx_cmd[0], &ha->qla4_82xx_reg->mailbox_in[0]);
 readl(&ha->qla4_82xx_reg->mailbox_in[0]);
 writel(HINT_MBX_INT_PENDING, &ha->qla4_82xx_reg->hint);
 readl(&ha->qla4_82xx_reg->hint);
}
