
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iscsi_task {TYPE_3__* hdr; struct bnx2i_cmd* dd_data; } ;
struct TYPE_4__ {int req_buf_size; char* req_buf; } ;
struct bnx2i_conn {TYPE_2__* cls_conn; TYPE_1__ gen_pdu; } ;
struct bnx2i_cmd {struct bnx2i_conn* conn; } ;
struct TYPE_6__ {int opcode; } ;
struct TYPE_5__ {int dd_data; } ;


 int ISCSI_OPCODE_MASK ;





 int KERN_ALERT ;
 int bnx2i_iscsi_prep_generic_pdu_bd (struct bnx2i_conn*) ;
 int bnx2i_send_iscsi_login (struct bnx2i_conn*,struct iscsi_task*) ;
 int bnx2i_send_iscsi_logout (struct bnx2i_conn*,struct iscsi_task*) ;
 int bnx2i_send_iscsi_nopout (struct bnx2i_conn*,struct iscsi_task*,char*,int,int) ;
 int bnx2i_send_iscsi_text (struct bnx2i_conn*,struct iscsi_task*) ;
 int bnx2i_send_iscsi_tmf (struct bnx2i_conn*,struct iscsi_task*) ;
 int iscsi_conn_printk (int ,int ,char*,int) ;

__attribute__((used)) static int bnx2i_iscsi_send_generic_request(struct iscsi_task *task)
{
 struct bnx2i_cmd *cmd = task->dd_data;
 struct bnx2i_conn *bnx2i_conn = cmd->conn;
 int rc = 0;
 char *buf;
 int data_len;

 bnx2i_iscsi_prep_generic_pdu_bd(bnx2i_conn);
 switch (task->hdr->opcode & ISCSI_OPCODE_MASK) {
 case 132:
  bnx2i_send_iscsi_login(bnx2i_conn, task);
  break;
 case 130:
  data_len = bnx2i_conn->gen_pdu.req_buf_size;
  buf = bnx2i_conn->gen_pdu.req_buf;
  if (data_len)
   rc = bnx2i_send_iscsi_nopout(bnx2i_conn, task,
           buf, data_len, 1);
  else
   rc = bnx2i_send_iscsi_nopout(bnx2i_conn, task,
           ((void*)0), 0, 1);
  break;
 case 131:
  rc = bnx2i_send_iscsi_logout(bnx2i_conn, task);
  break;
 case 129:
  rc = bnx2i_send_iscsi_tmf(bnx2i_conn, task);
  break;
 case 128:
  rc = bnx2i_send_iscsi_text(bnx2i_conn, task);
  break;
 default:
  iscsi_conn_printk(KERN_ALERT, bnx2i_conn->cls_conn->dd_data,
      "send_gen: unsupported op 0x%x\n",
      task->hdr->opcode);
 }
 return rc;
}
