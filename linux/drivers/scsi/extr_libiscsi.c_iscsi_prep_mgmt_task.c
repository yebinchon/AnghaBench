
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct iscsi_task {int data_count; int state; struct iscsi_hdr* hdr; } ;
struct iscsi_session {scalar_t__ state; TYPE_1__* tt; int cmdsn; int queued_cmdsn; } ;
struct iscsi_nopout {void* cmdsn; void* exp_statsn; } ;
struct iscsi_hdr {scalar_t__ opcode; scalar_t__ itt; } ;
struct iscsi_conn {scalar_t__ c_stage; int exp_statsn; struct iscsi_session* session; } ;
struct TYPE_2__ {scalar_t__ (* init_task ) (struct iscsi_task*) ;} ;


 int EIO ;
 int ENOTCONN ;
 scalar_t__ ISCSI_CONN_STARTED ;
 int ISCSI_DBG_SESSION (struct iscsi_session*,char*,scalar_t__,scalar_t__,int ) ;
 scalar_t__ ISCSI_OPCODE_MASK ;
 int ISCSI_OP_IMMEDIATE ;
 scalar_t__ ISCSI_OP_LOGIN ;
 scalar_t__ ISCSI_OP_LOGOUT ;
 scalar_t__ ISCSI_OP_TEXT ;
 scalar_t__ ISCSI_STATE_LOGGING_OUT ;
 int ISCSI_TASK_RUNNING ;
 scalar_t__ RESERVED_ITT ;
 void* cpu_to_be32 (int ) ;
 scalar_t__ stub1 (struct iscsi_task*) ;

__attribute__((used)) static int iscsi_prep_mgmt_task(struct iscsi_conn *conn,
    struct iscsi_task *task)
{
 struct iscsi_session *session = conn->session;
 struct iscsi_hdr *hdr = task->hdr;
 struct iscsi_nopout *nop = (struct iscsi_nopout *)hdr;
 uint8_t opcode = hdr->opcode & ISCSI_OPCODE_MASK;

 if (conn->session->state == ISCSI_STATE_LOGGING_OUT)
  return -ENOTCONN;

 if (opcode != ISCSI_OP_LOGIN && opcode != ISCSI_OP_TEXT)
  nop->exp_statsn = cpu_to_be32(conn->exp_statsn);



 nop->cmdsn = cpu_to_be32(session->cmdsn);
 if (hdr->itt != RESERVED_ITT) {
  if (conn->c_stage == ISCSI_CONN_STARTED &&
      !(hdr->opcode & ISCSI_OP_IMMEDIATE)) {
   session->queued_cmdsn++;
   session->cmdsn++;
  }
 }

 if (session->tt->init_task && session->tt->init_task(task))
  return -EIO;

 if ((hdr->opcode & ISCSI_OPCODE_MASK) == ISCSI_OP_LOGOUT)
  session->state = ISCSI_STATE_LOGGING_OUT;

 task->state = ISCSI_TASK_RUNNING;
 ISCSI_DBG_SESSION(session, "mgmtpdu [op 0x%x hdr->itt 0x%x "
     "datalen %d]\n", hdr->opcode & ISCSI_OPCODE_MASK,
     hdr->itt, task->data_count);
 return 0;
}
