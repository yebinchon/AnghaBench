
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct iscsi_hdr {int opcode; } ;
struct iscsi_conn {scalar_t__ conn_state; TYPE_2__* sess; } ;
struct cxgbit_sock {struct iscsi_conn* conn; int skb; } ;
struct cxgbit_lro_pdu_cb {int flags; struct iscsi_hdr* hdr; } ;
struct TYPE_4__ {TYPE_1__* sess_ops; int conn_digest_errors; } ;
struct TYPE_3__ {scalar_t__ SessionType; } ;


 int ISCSI_OPCODE_MASK ;
 int ISCSI_OP_LOGOUT ;
 int ISCSI_OP_TEXT ;
 int ISCSI_REASON_PROTOCOL_ERROR ;
 int PDUCBF_RX_HCRC_ERR ;
 scalar_t__ TARG_CONN_STATE_IN_LOGOUT ;
 int atomic_long_inc (int *) ;
 struct cxgbit_lro_pdu_cb* cxgbit_rx_pdu_cb (int ) ;
 scalar_t__ cxgbit_target_rx_opcode (struct cxgbit_sock*) ;
 int iscsit_add_reject (struct iscsi_conn*,int ,unsigned char*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int cxgbit_rx_opcode(struct cxgbit_sock *csk)
{
 struct cxgbit_lro_pdu_cb *pdu_cb = cxgbit_rx_pdu_cb(csk->skb);
 struct iscsi_conn *conn = csk->conn;
 struct iscsi_hdr *hdr = pdu_cb->hdr;
 u8 opcode;

 if (pdu_cb->flags & PDUCBF_RX_HCRC_ERR) {
  atomic_long_inc(&conn->sess->conn_digest_errors);
  goto transport_err;
 }

 if (conn->conn_state == TARG_CONN_STATE_IN_LOGOUT)
  goto transport_err;

 opcode = hdr->opcode & ISCSI_OPCODE_MASK;

 if (conn->sess->sess_ops->SessionType &&
     ((!(opcode & ISCSI_OP_TEXT)) ||
      (!(opcode & ISCSI_OP_LOGOUT)))) {
  pr_err("Received illegal iSCSI Opcode: 0x%02x"
   " while in Discovery Session, rejecting.\n", opcode);
  iscsit_add_reject(conn, ISCSI_REASON_PROTOCOL_ERROR,
      (unsigned char *)hdr);
  goto transport_err;
 }

 if (cxgbit_target_rx_opcode(csk) < 0)
  goto transport_err;

 return 0;

transport_err:
 return -1;
}
