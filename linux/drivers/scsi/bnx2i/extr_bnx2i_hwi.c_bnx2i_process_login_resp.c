
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iscsi_task {TYPE_2__* hdr; } ;
struct iscsi_session {int back_lock; } ;
struct iscsi_login_rsp {int status_detail; int status_class; void* max_cmdsn; void* exp_cmdsn; void* statsn; int itt; int tsih; int isid; int dlength; scalar_t__ hlength; int active_version; int max_version; int flags; int opcode; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {int dummy; } ;
struct cqe {int dummy; } ;
struct bnx2i_login_response {int itt; int data_length; int status_detail; int status_class; int max_cmd_sn; int exp_cmd_sn; int stat_sn; int tsih; int isid_lo; int version_active; int version_max; int response_flags; int op_code; } ;
struct TYPE_6__ {scalar_t__* resp_buf; scalar_t__* resp_wr_ptr; int resp_hdr; } ;
struct bnx2i_conn {TYPE_3__ gen_pdu; TYPE_1__* cls_conn; } ;
struct TYPE_5__ {int itt; } ;
struct TYPE_4__ {struct iscsi_conn* dd_data; } ;


 int ISCSI_LOGIN_RESPONSE_INDEX ;
 int __iscsi_complete_pdu (struct iscsi_conn*,struct iscsi_hdr*,scalar_t__*,scalar_t__*) ;
 int cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int ) ;
 int hton24 (int ,int) ;
 struct iscsi_task* iscsi_itt_to_task (struct iscsi_conn*,int) ;
 int memcpy (int ,int *,int) ;
 int memset (struct iscsi_login_rsp*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int bnx2i_process_login_resp(struct iscsi_session *session,
        struct bnx2i_conn *bnx2i_conn,
        struct cqe *cqe)
{
 struct iscsi_conn *conn = bnx2i_conn->cls_conn->dd_data;
 struct iscsi_task *task;
 struct bnx2i_login_response *login;
 struct iscsi_login_rsp *resp_hdr;
 int pld_len;
 int pad_len;

 login = (struct bnx2i_login_response *) cqe;
 spin_lock(&session->back_lock);
 task = iscsi_itt_to_task(conn,
     login->itt & ISCSI_LOGIN_RESPONSE_INDEX);
 if (!task)
  goto done;

 resp_hdr = (struct iscsi_login_rsp *) &bnx2i_conn->gen_pdu.resp_hdr;
 memset(resp_hdr, 0, sizeof(struct iscsi_hdr));
 resp_hdr->opcode = login->op_code;
 resp_hdr->flags = login->response_flags;
 resp_hdr->max_version = login->version_max;
 resp_hdr->active_version = login->version_active;
 resp_hdr->hlength = 0;

 hton24(resp_hdr->dlength, login->data_length);
 memcpy(resp_hdr->isid, &login->isid_lo, 6);
 resp_hdr->tsih = cpu_to_be16(login->tsih);
 resp_hdr->itt = task->hdr->itt;
 resp_hdr->statsn = cpu_to_be32(login->stat_sn);
 resp_hdr->exp_cmdsn = cpu_to_be32(login->exp_cmd_sn);
 resp_hdr->max_cmdsn = cpu_to_be32(login->max_cmd_sn);
 resp_hdr->status_class = login->status_class;
 resp_hdr->status_detail = login->status_detail;
 pld_len = login->data_length;
 bnx2i_conn->gen_pdu.resp_wr_ptr =
     bnx2i_conn->gen_pdu.resp_buf + pld_len;

 pad_len = 0;
 if (pld_len & 0x3)
  pad_len = 4 - (pld_len % 4);

 if (pad_len) {
  int i = 0;
  for (i = 0; i < pad_len; i++) {
   bnx2i_conn->gen_pdu.resp_wr_ptr[0] = 0;
   bnx2i_conn->gen_pdu.resp_wr_ptr++;
  }
 }

 __iscsi_complete_pdu(conn, (struct iscsi_hdr *)resp_hdr,
  bnx2i_conn->gen_pdu.resp_buf,
  bnx2i_conn->gen_pdu.resp_wr_ptr - bnx2i_conn->gen_pdu.resp_buf);
done:
 spin_unlock(&session->back_lock);
 return 0;
}
