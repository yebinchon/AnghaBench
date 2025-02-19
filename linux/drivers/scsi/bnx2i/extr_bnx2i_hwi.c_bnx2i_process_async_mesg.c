
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct iscsi_session {int back_lock; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_async {int flags; scalar_t__ async_event; void* param3; void* param2; void* param1; int async_vcode; void* max_cmdsn; void* exp_cmdsn; int lun; int opcode; } ;
struct cqe {int dummy; } ;
struct TYPE_3__ {int resp_hdr; } ;
struct bnx2i_conn {TYPE_2__* cls_conn; TYPE_1__ gen_pdu; } ;
struct bnx2i_async_msg {scalar_t__ async_event; int param3; int param2; int param1; int async_vcode; int max_cmd_sn; int exp_cmd_sn; int lun; int op_code; } ;
struct TYPE_4__ {int dd_data; } ;


 scalar_t__ ISCSI_ASYNC_MSG_SCSI_EVENT ;
 int KERN_ALERT ;
 int __iscsi_complete_pdu (int ,struct iscsi_hdr*,int *,int ) ;
 int bnx2i_unsol_pdu_adjust_rq (struct bnx2i_conn*) ;
 void* cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int ) ;
 int iscsi_conn_printk (int ,int ,char*) ;
 int memcpy (int *,int ,int) ;
 int memset (struct iscsi_async*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void bnx2i_process_async_mesg(struct iscsi_session *session,
         struct bnx2i_conn *bnx2i_conn,
         struct cqe *cqe)
{
 struct bnx2i_async_msg *async_cqe;
 struct iscsi_async *resp_hdr;
 u8 async_event;

 bnx2i_unsol_pdu_adjust_rq(bnx2i_conn);

 async_cqe = (struct bnx2i_async_msg *)cqe;
 async_event = async_cqe->async_event;

 if (async_event == ISCSI_ASYNC_MSG_SCSI_EVENT) {
  iscsi_conn_printk(KERN_ALERT, bnx2i_conn->cls_conn->dd_data,
      "async: scsi events not supported\n");
  return;
 }

 spin_lock(&session->back_lock);
 resp_hdr = (struct iscsi_async *) &bnx2i_conn->gen_pdu.resp_hdr;
 memset(resp_hdr, 0, sizeof(struct iscsi_hdr));
 resp_hdr->opcode = async_cqe->op_code;
 resp_hdr->flags = 0x80;

 memcpy(&resp_hdr->lun, async_cqe->lun, 8);
 resp_hdr->exp_cmdsn = cpu_to_be32(async_cqe->exp_cmd_sn);
 resp_hdr->max_cmdsn = cpu_to_be32(async_cqe->max_cmd_sn);

 resp_hdr->async_event = async_cqe->async_event;
 resp_hdr->async_vcode = async_cqe->async_vcode;

 resp_hdr->param1 = cpu_to_be16(async_cqe->param1);
 resp_hdr->param2 = cpu_to_be16(async_cqe->param2);
 resp_hdr->param3 = cpu_to_be16(async_cqe->param3);

 __iscsi_complete_pdu(bnx2i_conn->cls_conn->dd_data,
        (struct iscsi_hdr *)resp_hdr, ((void*)0), 0);
 spin_unlock(&session->back_lock);
}
