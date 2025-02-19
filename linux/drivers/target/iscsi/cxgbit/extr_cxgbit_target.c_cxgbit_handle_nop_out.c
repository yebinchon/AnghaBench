
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iscsi_nopout {scalar_t__ ttt; int cmdsn; } ;
struct iscsi_conn {TYPE_2__* sess; } ;
struct iscsi_cmd {unsigned char* buf_ptr; int buf_ptr_size; } ;
struct cxgbit_sock {int skb; struct iscsi_conn* conn; } ;
struct cxgbit_lro_pdu_cb {int dlen; int flags; int doffset; scalar_t__ hdr; } ;
struct TYPE_4__ {TYPE_1__* sess_ops; } ;
struct TYPE_3__ {int ErrorRecoveryLevel; } ;


 int GFP_KERNEL ;
 int PDUCBF_RX_DCRC_ERR ;
 scalar_t__ cpu_to_be32 (int) ;
 struct cxgbit_lro_pdu_cb* cxgbit_rx_pdu_cb (int ) ;
 int iscsit_free_cmd (struct iscsi_cmd*,int) ;
 int iscsit_process_nop_out (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_nopout*) ;
 int iscsit_setup_nop_out (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_nopout*) ;
 unsigned char* kzalloc (int,int ) ;
 int pr_debug (char*,...) ;
 int pr_err (char*) ;
 int pr_info (char*,int ) ;
 int skb_copy_bits (int ,int ,unsigned char*,int) ;

__attribute__((used)) static int cxgbit_handle_nop_out(struct cxgbit_sock *csk, struct iscsi_cmd *cmd)
{
 struct iscsi_conn *conn = csk->conn;
 struct cxgbit_lro_pdu_cb *pdu_cb = cxgbit_rx_pdu_cb(csk->skb);
 struct iscsi_nopout *hdr = (struct iscsi_nopout *)pdu_cb->hdr;
 unsigned char *ping_data = ((void*)0);
 u32 payload_length = pdu_cb->dlen;
 int ret;

 ret = iscsit_setup_nop_out(conn, cmd, hdr);
 if (ret < 0)
  return 0;

 if (pdu_cb->flags & PDUCBF_RX_DCRC_ERR) {
  if (!conn->sess->sess_ops->ErrorRecoveryLevel) {
   pr_err("Unable to recover from"
          " NOPOUT Ping DataCRC failure while in"
          " ERL=0.\n");
   ret = -1;
   goto out;
  } else {




   pr_info("Dropping NOPOUT"
    " Command CmdSN: 0x%08x due to"
    " DataCRC error.\n", hdr->cmdsn);
   ret = 0;
   goto out;
  }
 }




 if (payload_length && hdr->ttt == cpu_to_be32(0xFFFFFFFF)) {
  ping_data = kzalloc(payload_length + 1, GFP_KERNEL);
  if (!ping_data) {
   pr_err("Unable to allocate memory for"
    " NOPOUT ping data.\n");
   ret = -1;
   goto out;
  }

  skb_copy_bits(csk->skb, pdu_cb->doffset,
         ping_data, payload_length);

  ping_data[payload_length] = '\0';



  cmd->buf_ptr = ping_data;
  cmd->buf_ptr_size = payload_length;

  pr_debug("Got %u bytes of NOPOUT ping"
   " data.\n", payload_length);
  pr_debug("Ping Data: \"%s\"\n", ping_data);
 }

 return iscsit_process_nop_out(conn, cmd, hdr);
out:
 if (cmd)
  iscsit_free_cmd(cmd, 0);
 return ret;
}
