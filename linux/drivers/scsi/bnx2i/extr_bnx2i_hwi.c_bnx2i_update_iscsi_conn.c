
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct kwqe {int dummy; } ;
struct TYPE_6__ {int flags; int op_code; } ;
struct iscsi_kwqe_conn_update {int context_id; int max_send_pdu_length; int max_recv_pdu_length; int first_burst_length; int max_burst_length; int session_error_recovery_level; int max_outstanding_r2ts; int exp_stat_sn; int conn_flags; TYPE_1__ hdr; } ;
struct iscsi_conn {TYPE_4__* session; int exp_statsn; int max_recv_dlength; int max_xmit_dlength; scalar_t__ datadgst_en; scalar_t__ hdrdgst_en; struct bnx2i_conn* dd_data; } ;
struct bnx2i_hba {TYPE_5__* cnic; } ;
struct bnx2i_conn {TYPE_3__* ep; struct bnx2i_hba* hba; } ;
struct TYPE_10__ {int (* submit_kwqes ) (TYPE_5__*,struct kwqe**,int) ;} ;
struct TYPE_9__ {int erl; int max_r2t; int max_burst; int first_burst; scalar_t__ imm_data_en; scalar_t__ initial_r2t_en; } ;
struct TYPE_8__ {int ep_cid; TYPE_2__* hba; } ;
struct TYPE_7__ {int cnic_dev_type; } ;


 int BNX2I_NX2_DEV_57710 ;
 int ISCSI_KWQE_CONN_UPDATE_DATA_DIGEST ;
 int ISCSI_KWQE_CONN_UPDATE_HEADER_DIGEST ;
 int ISCSI_KWQE_CONN_UPDATE_IMMEDIATE_DATA ;
 int ISCSI_KWQE_CONN_UPDATE_INITIAL_R2T ;
 int ISCSI_KWQE_HEADER_LAYER_CODE_SHIFT ;
 int ISCSI_KWQE_LAYER_CODE ;
 int ISCSI_KWQE_OPCODE_UPDATE_CONN ;
 int KERN_ALERT ;
 int iscsi_conn_printk (int ,struct iscsi_conn*,char*,int ,int ,int ,int ) ;
 int stub1 (TYPE_5__*,struct kwqe**,int) ;
 scalar_t__ test_bit (int ,int *) ;

void bnx2i_update_iscsi_conn(struct iscsi_conn *conn)
{
 struct bnx2i_conn *bnx2i_conn = conn->dd_data;
 struct bnx2i_hba *hba = bnx2i_conn->hba;
 struct kwqe *kwqe_arr[2];
 struct iscsi_kwqe_conn_update *update_wqe;
 struct iscsi_kwqe_conn_update conn_update_kwqe;

 update_wqe = &conn_update_kwqe;

 update_wqe->hdr.op_code = ISCSI_KWQE_OPCODE_UPDATE_CONN;
 update_wqe->hdr.flags =
  (ISCSI_KWQE_LAYER_CODE << ISCSI_KWQE_HEADER_LAYER_CODE_SHIFT);


 if (test_bit(BNX2I_NX2_DEV_57710, &bnx2i_conn->ep->hba->cnic_dev_type))
  update_wqe->context_id = bnx2i_conn->ep->ep_cid;
 else
  update_wqe->context_id = (bnx2i_conn->ep->ep_cid >> 7);
 update_wqe->conn_flags = 0;
 if (conn->hdrdgst_en)
  update_wqe->conn_flags |= ISCSI_KWQE_CONN_UPDATE_HEADER_DIGEST;
 if (conn->datadgst_en)
  update_wqe->conn_flags |= ISCSI_KWQE_CONN_UPDATE_DATA_DIGEST;
 if (conn->session->initial_r2t_en)
  update_wqe->conn_flags |= ISCSI_KWQE_CONN_UPDATE_INITIAL_R2T;
 if (conn->session->imm_data_en)
  update_wqe->conn_flags |= ISCSI_KWQE_CONN_UPDATE_IMMEDIATE_DATA;

 update_wqe->max_send_pdu_length = conn->max_xmit_dlength;
 update_wqe->max_recv_pdu_length = conn->max_recv_dlength;
 update_wqe->first_burst_length = conn->session->first_burst;
 update_wqe->max_burst_length = conn->session->max_burst;
 update_wqe->exp_stat_sn = conn->exp_statsn;
 update_wqe->max_outstanding_r2ts = conn->session->max_r2t;
 update_wqe->session_error_recovery_level = conn->session->erl;
 iscsi_conn_printk(KERN_ALERT, conn,
     "bnx2i: conn update - MBL 0x%x FBL 0x%x"
     "MRDSL_I 0x%x MRDSL_T 0x%x \n",
     update_wqe->max_burst_length,
     update_wqe->first_burst_length,
     update_wqe->max_recv_pdu_length,
     update_wqe->max_send_pdu_length);

 kwqe_arr[0] = (struct kwqe *) update_wqe;
 if (hba->cnic && hba->cnic->submit_kwqes)
  hba->cnic->submit_kwqes(hba->cnic, kwqe_arr, 1);
}
