
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; int crq_token; } ;
struct TYPE_3__ {int unit_id; } ;
struct scsi_info {int flags; int state; TYPE_2__ cmd_q; TYPE_1__ dds; } ;


 long ADAPT_SUCCESS ;
 int ERR_DISCONNECTED ;
 long H_CLOSED ;
 long H_SUCCESS ;
 int PAGE_SIZE ;
 int RESPONSE_Q_DOWN ;
 int WAIT_CONNECTION ;
 long h_reg_crq (int ,int ,int) ;
 long ibmvscsis_establish_new_q (struct scsi_info*) ;

__attribute__((used)) static long ibmvscsis_enable_change_state(struct scsi_info *vscsi)
{
 int bytes;
 long rc = ADAPT_SUCCESS;

 bytes = vscsi->cmd_q.size * PAGE_SIZE;
 rc = h_reg_crq(vscsi->dds.unit_id, vscsi->cmd_q.crq_token, bytes);
 if (rc == H_CLOSED || rc == H_SUCCESS) {
  vscsi->state = WAIT_CONNECTION;
  rc = ibmvscsis_establish_new_q(vscsi);
 }

 if (rc != ADAPT_SUCCESS) {
  vscsi->state = ERR_DISCONNECTED;
  vscsi->flags |= RESPONSE_Q_DOWN;
 }

 return rc;
}
