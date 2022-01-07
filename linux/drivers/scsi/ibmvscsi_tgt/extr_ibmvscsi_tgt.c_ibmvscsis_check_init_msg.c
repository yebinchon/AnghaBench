
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct viosrp_crq {scalar_t__ valid; scalar_t__ format; } ;
struct TYPE_2__ {int base_addr; int index; int mask; } ;
struct scsi_info {TYPE_1__ cmd_q; } ;


 long ADAPT_SUCCESS ;
 long ERROR ;
 scalar_t__ INIT_MSG ;
 void* INVALIDATE_CMD_RESP_EL ;
 scalar_t__ UNUSED_FORMAT ;
 scalar_t__ VALID_INIT_MSG ;
 int dma_rmb () ;
 struct viosrp_crq* ibmvscsis_cmd_q_dequeue (int ,int *,int ) ;

__attribute__((used)) static long ibmvscsis_check_init_msg(struct scsi_info *vscsi, uint *format)
{
 struct viosrp_crq *crq;
 long rc = ADAPT_SUCCESS;

 crq = ibmvscsis_cmd_q_dequeue(vscsi->cmd_q.mask, &vscsi->cmd_q.index,
          vscsi->cmd_q.base_addr);
 if (!crq) {
  *format = (uint)UNUSED_FORMAT;
 } else if (crq->valid == VALID_INIT_MSG && crq->format == INIT_MSG) {
  *format = (uint)INIT_MSG;
  crq->valid = INVALIDATE_CMD_RESP_EL;
  dma_rmb();






  crq = ibmvscsis_cmd_q_dequeue(vscsi->cmd_q.mask,
           &vscsi->cmd_q.index,
           vscsi->cmd_q.base_addr);
  if (crq) {
   *format = (uint)(crq->format);
   rc = ERROR;
   crq->valid = INVALIDATE_CMD_RESP_EL;
   dma_rmb();
  }
 } else {
  *format = (uint)(crq->format);
  rc = ERROR;
  crq->valid = INVALIDATE_CMD_RESP_EL;
  dma_rmb();
 }

 return rc;
}
