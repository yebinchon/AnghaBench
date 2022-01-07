
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ req_buf; scalar_t__ req_wr_ptr; scalar_t__ req_buf_size; } ;
struct qedi_conn {TYPE_1__ gen_pdu; } ;
struct qedi_cmd {int * scsi_cmd; struct qedi_conn* conn; } ;
struct iscsi_task {scalar_t__ data_count; int data; struct qedi_cmd* dd_data; } ;
struct iscsi_conn {struct qedi_conn* dd_data; } ;


 int ISCSI_DEF_MAX_RECV_SEG_LEN ;
 int memcpy (scalar_t__,int ,scalar_t__) ;
 int memset (scalar_t__,int ,int ) ;
 int qedi_iscsi_send_generic_request (struct iscsi_task*) ;

__attribute__((used)) static int qedi_mtask_xmit(struct iscsi_conn *conn, struct iscsi_task *task)
{
 struct qedi_conn *qedi_conn = conn->dd_data;
 struct qedi_cmd *cmd = task->dd_data;

 memset(qedi_conn->gen_pdu.req_buf, 0, ISCSI_DEF_MAX_RECV_SEG_LEN);

 qedi_conn->gen_pdu.req_buf_size = task->data_count;

 if (task->data_count) {
  memcpy(qedi_conn->gen_pdu.req_buf, task->data,
         task->data_count);
  qedi_conn->gen_pdu.req_wr_ptr =
   qedi_conn->gen_pdu.req_buf + task->data_count;
 }

 cmd->conn = conn->dd_data;
 cmd->scsi_cmd = ((void*)0);
 return qedi_iscsi_send_generic_request(task);
}
