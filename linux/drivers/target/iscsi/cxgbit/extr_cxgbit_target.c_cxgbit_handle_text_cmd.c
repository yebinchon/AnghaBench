
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iscsi_text {int cmdsn; } ;
struct iscsi_conn {TYPE_2__* sess; } ;
struct iscsi_cmd {unsigned char* text_in_ptr; } ;
struct cxgbit_sock {int skb; struct iscsi_conn* conn; } ;
struct cxgbit_lro_pdu_cb {int dlen; int flags; scalar_t__ hdr; int doffset; } ;
struct TYPE_4__ {TYPE_1__* sess_ops; } ;
struct TYPE_3__ {int ErrorRecoveryLevel; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ISCSI_REASON_PROTOCOL_ERROR ;
 int PDUCBF_RX_DCRC_ERR ;
 struct cxgbit_lro_pdu_cb* cxgbit_rx_pdu_cb (int ) ;
 int iscsit_process_text_cmd (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_text*) ;
 int iscsit_reject_cmd (struct iscsi_cmd*,int ,scalar_t__) ;
 int iscsit_setup_text_cmd (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_text*) ;
 unsigned char* kzalloc (int,int ) ;
 int pr_err (char*,...) ;
 int pr_info (char*,int ) ;
 int skb_copy_bits (int ,int ,unsigned char*,int) ;

__attribute__((used)) static int
cxgbit_handle_text_cmd(struct cxgbit_sock *csk, struct iscsi_cmd *cmd)
{
 struct iscsi_conn *conn = csk->conn;
 struct cxgbit_lro_pdu_cb *pdu_cb = cxgbit_rx_pdu_cb(csk->skb);
 struct iscsi_text *hdr = (struct iscsi_text *)pdu_cb->hdr;
 u32 payload_length = pdu_cb->dlen;
 int rc;
 unsigned char *text_in = ((void*)0);

 rc = iscsit_setup_text_cmd(conn, cmd, hdr);
 if (rc < 0)
  return rc;

 if (pdu_cb->flags & PDUCBF_RX_DCRC_ERR) {
  if (!conn->sess->sess_ops->ErrorRecoveryLevel) {
   pr_err("Unable to recover from"
          " Text Data digest failure while in"
          " ERL=0.\n");
   goto reject;
  } else {




   pr_info("Dropping Text"
    " Command CmdSN: 0x%08x due to"
    " DataCRC error.\n", hdr->cmdsn);
   return 0;
  }
 }

 if (payload_length) {
  text_in = kzalloc(payload_length, GFP_KERNEL);
  if (!text_in) {
   pr_err("Unable to allocate text_in of payload_length: %u\n",
          payload_length);
   return -ENOMEM;
  }
  skb_copy_bits(csk->skb, pdu_cb->doffset,
         text_in, payload_length);

  text_in[payload_length - 1] = '\0';

  cmd->text_in_ptr = text_in;
 }

 return iscsit_process_text_cmd(conn, cmd, hdr);

reject:
 return iscsit_reject_cmd(cmd, ISCSI_REASON_PROTOCOL_ERROR,
     pdu_cb->hdr);
}
