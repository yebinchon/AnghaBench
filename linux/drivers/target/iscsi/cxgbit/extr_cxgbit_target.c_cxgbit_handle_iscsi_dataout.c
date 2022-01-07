
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct scatterlist {int dummy; } ;
struct iscsi_data {int datasn; int offset; int itt; int dlength; } ;
struct iscsi_conn {TYPE_1__* sess; } ;
struct TYPE_4__ {struct scatterlist* t_data_sg; int data_length; } ;
struct iscsi_cmd {int write_data_done; int next_burst_len; TYPE_2__ se_cmd; void* data_sn; } ;
struct cxgbit_sock {int skb; struct iscsi_conn* conn; } ;
struct cxgbit_lro_pdu_cb {int dlen; int flags; scalar_t__ hdr; } ;
struct TYPE_3__ {int rx_data_octets; } ;


 int DIV_ROUND_UP (int,int) ;
 int PAGE_SIZE ;
 int PDUCBF_RX_DATA_DDPD ;
 int PDUCBF_RX_DCRC_ERR ;
 int PDUCBF_RX_DDP_CMP ;
 int __iscsit_check_dataout_hdr (struct iscsi_conn*,unsigned char*,struct iscsi_cmd*,int,int*) ;
 int atomic_long_add (int,int *) ;
 void* be32_to_cpu (int ) ;
 struct cxgbit_lro_pdu_cb* cxgbit_rx_pdu_cb (int ) ;
 int cxgbit_skb_copy_to_sg (int ,struct scatterlist*,int,int) ;
 int iscsit_check_dataout_hdr (struct iscsi_conn*,unsigned char*,struct iscsi_cmd**) ;
 int iscsit_check_dataout_payload (struct iscsi_cmd*,struct iscsi_data*,int) ;
 struct iscsi_cmd* iscsit_find_cmd_from_itt_or_dump (struct iscsi_conn*,int ,int ) ;
 int max (unsigned long,int ) ;
 int ntoh24 (int ) ;
 int pr_debug (char*,int,int,int ) ;
 int pr_err (char*,int ,int ,int,int ) ;

__attribute__((used)) static int cxgbit_handle_iscsi_dataout(struct cxgbit_sock *csk)
{
 struct scatterlist *sg_start;
 struct iscsi_conn *conn = csk->conn;
 struct iscsi_cmd *cmd = ((void*)0);
 struct cxgbit_lro_pdu_cb *pdu_cb = cxgbit_rx_pdu_cb(csk->skb);
 struct iscsi_data *hdr = (struct iscsi_data *)pdu_cb->hdr;
 u32 data_offset = be32_to_cpu(hdr->offset);
 u32 data_len = pdu_cb->dlen;
 int rc, sg_nents, sg_off;
 bool dcrc_err = 0;

 if (pdu_cb->flags & PDUCBF_RX_DDP_CMP) {
  u32 offset = be32_to_cpu(hdr->offset);
  u32 ddp_data_len;
  u32 payload_length = ntoh24(hdr->dlength);
  bool success = 0;

  cmd = iscsit_find_cmd_from_itt_or_dump(conn, hdr->itt, 0);
  if (!cmd)
   return 0;

  ddp_data_len = offset - cmd->write_data_done;
  atomic_long_add(ddp_data_len, &conn->sess->rx_data_octets);

  cmd->write_data_done = offset;
  cmd->next_burst_len = ddp_data_len;
  cmd->data_sn = be32_to_cpu(hdr->datasn);

  rc = __iscsit_check_dataout_hdr(conn, (unsigned char *)hdr,
      cmd, payload_length, &success);
  if (rc < 0)
   return rc;
  else if (!success)
   return 0;
 } else {
  rc = iscsit_check_dataout_hdr(conn, (unsigned char *)hdr, &cmd);
  if (rc < 0)
   return rc;
  else if (!cmd)
   return 0;
 }

 if (pdu_cb->flags & PDUCBF_RX_DCRC_ERR) {
  pr_err("ITT: 0x%08x, Offset: %u, Length: %u,"
         " DataSN: 0x%08x\n",
         hdr->itt, hdr->offset, data_len,
         hdr->datasn);

  dcrc_err = 1;
  goto check_payload;
 }

 pr_debug("DataOut data_len: %u, "
  "write_data_done: %u, data_length: %u\n",
    data_len, cmd->write_data_done,
    cmd->se_cmd.data_length);

 if (!(pdu_cb->flags & PDUCBF_RX_DATA_DDPD)) {
  u32 skip = data_offset % PAGE_SIZE;

  sg_off = data_offset / PAGE_SIZE;
  sg_start = &cmd->se_cmd.t_data_sg[sg_off];
  sg_nents = max(1UL, DIV_ROUND_UP(skip + data_len, PAGE_SIZE));

  cxgbit_skb_copy_to_sg(csk->skb, sg_start, sg_nents, skip);
 }

check_payload:

 rc = iscsit_check_dataout_payload(cmd, hdr, dcrc_err);
 if (rc < 0)
  return rc;

 return 0;
}
