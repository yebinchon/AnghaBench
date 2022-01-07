
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_task {int data_count; int data; struct bnx2i_cmd* dd_data; } ;
struct iscsi_conn {struct bnx2i_conn* dd_data; } ;
struct bnx2i_hba {int dummy; } ;
struct TYPE_2__ {int req_buf; int req_buf_size; int req_wr_ptr; } ;
struct bnx2i_conn {TYPE_1__ gen_pdu; struct bnx2i_hba* hba; } ;
struct bnx2i_cmd {int * scsi_cmd; struct bnx2i_conn* conn; } ;


 int ADD_STATS_64 (struct bnx2i_hba*,int ,int) ;
 int ISCSI_DEF_MAX_RECV_SEG_LEN ;
 int bnx2i_iscsi_send_generic_request (struct iscsi_task*) ;
 int bnx2i_setup_cmd_wqe_template (struct bnx2i_cmd*) ;
 int memcpy (int,int ,int) ;
 int memset (int,int ,int ) ;
 int tx_bytes ;
 int tx_pdus ;

__attribute__((used)) static int
bnx2i_mtask_xmit(struct iscsi_conn *conn, struct iscsi_task *task)
{
 struct bnx2i_conn *bnx2i_conn = conn->dd_data;
 struct bnx2i_hba *hba = bnx2i_conn->hba;
 struct bnx2i_cmd *cmd = task->dd_data;

 memset(bnx2i_conn->gen_pdu.req_buf, 0, ISCSI_DEF_MAX_RECV_SEG_LEN);

 bnx2i_setup_cmd_wqe_template(cmd);
 bnx2i_conn->gen_pdu.req_buf_size = task->data_count;


 ADD_STATS_64(hba, tx_pdus, 1);
 ADD_STATS_64(hba, tx_bytes, task->data_count);

 if (task->data_count) {
  memcpy(bnx2i_conn->gen_pdu.req_buf, task->data,
         task->data_count);
  bnx2i_conn->gen_pdu.req_wr_ptr =
   bnx2i_conn->gen_pdu.req_buf + task->data_count;
 }
 cmd->conn = conn->dd_data;
 cmd->scsi_cmd = ((void*)0);
 return bnx2i_iscsi_send_generic_request(task);
}
