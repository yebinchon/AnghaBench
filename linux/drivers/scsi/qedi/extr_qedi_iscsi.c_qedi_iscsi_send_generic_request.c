
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int req_buf_size; char* req_buf; } ;
struct qedi_conn {TYPE_2__* cls_conn; TYPE_1__ gen_pdu; } ;
struct qedi_cmd {struct qedi_conn* conn; } ;
struct iscsi_task {TYPE_3__* hdr; struct qedi_cmd* dd_data; } ;
struct TYPE_6__ {int opcode; } ;
struct TYPE_5__ {int dd_data; } ;


 int ISCSI_OPCODE_MASK ;





 int KERN_ALERT ;
 int iscsi_conn_printk (int ,int ,char*,int) ;
 int qedi_iscsi_abort_work (struct qedi_conn*,struct iscsi_task*) ;
 int qedi_iscsi_prep_generic_pdu_bd (struct qedi_conn*) ;
 int qedi_send_iscsi_login (struct qedi_conn*,struct iscsi_task*) ;
 int qedi_send_iscsi_logout (struct qedi_conn*,struct iscsi_task*) ;
 int qedi_send_iscsi_nopout (struct qedi_conn*,struct iscsi_task*,char*,int,int) ;
 int qedi_send_iscsi_text (struct qedi_conn*,struct iscsi_task*) ;

__attribute__((used)) static int qedi_iscsi_send_generic_request(struct iscsi_task *task)
{
 struct qedi_cmd *cmd = task->dd_data;
 struct qedi_conn *qedi_conn = cmd->conn;
 char *buf;
 int data_len;
 int rc = 0;

 qedi_iscsi_prep_generic_pdu_bd(qedi_conn);
 switch (task->hdr->opcode & ISCSI_OPCODE_MASK) {
 case 132:
  qedi_send_iscsi_login(qedi_conn, task);
  break;
 case 130:
  data_len = qedi_conn->gen_pdu.req_buf_size;
  buf = qedi_conn->gen_pdu.req_buf;
  if (data_len)
   rc = qedi_send_iscsi_nopout(qedi_conn, task,
          buf, data_len, 1);
  else
   rc = qedi_send_iscsi_nopout(qedi_conn, task,
          ((void*)0), 0, 1);
  break;
 case 131:
  rc = qedi_send_iscsi_logout(qedi_conn, task);
  break;
 case 129:
  rc = qedi_iscsi_abort_work(qedi_conn, task);
  break;
 case 128:
  rc = qedi_send_iscsi_text(qedi_conn, task);
  break;
 default:
  iscsi_conn_printk(KERN_ALERT, qedi_conn->cls_conn->dd_data,
      "unsupported op 0x%x\n", task->hdr->opcode);
 }

 return rc;
}
