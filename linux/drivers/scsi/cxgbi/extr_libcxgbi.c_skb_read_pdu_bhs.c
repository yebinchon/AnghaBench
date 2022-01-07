
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct sk_buff {scalar_t__ data; int len; } ;
struct iscsi_tcp_task {int exp_datasn; } ;
struct iscsi_tcp_conn {int dummy; } ;
struct iscsi_task {struct iscsi_tcp_task* dd_data; scalar_t__ sc; } ;
struct iscsi_hdr {scalar_t__ opcode; } ;
struct iscsi_data {int datasn; int itt; } ;
struct iscsi_conn {scalar_t__ hdrdgst_en; struct iscsi_tcp_conn* dd_data; } ;
struct cxgbi_sock {int dummy; } ;
typedef int itt_t ;


 int CTPF_LOGOUT_RSP_RCVD ;
 int CXGBI_DBG_PDU_RX ;
 int EIO ;
 int ISCSI_ERR_HDR_DGST ;
 int ISCSI_ERR_PROTO ;
 scalar_t__ ISCSI_OPCODE_MASK ;
 scalar_t__ ISCSI_OP_LOGOUT_RSP ;
 int SKCBF_RX_DATA_DDPD ;
 int SKCBF_RX_HCRC_ERR ;
 int SKCBF_RX_ISCSI_COMPL ;
 int be32_to_cpu (int ) ;
 int cxgbi_skcb_flags (struct sk_buff*) ;
 scalar_t__ cxgbi_skcb_test_flag (struct sk_buff*,int ) ;
 int cxgbi_sock_set_flag (struct cxgbi_sock*,int ) ;
 int iscsi_conn_failure (struct iscsi_conn*,int ) ;
 struct iscsi_task* iscsi_itt_to_ctask (struct iscsi_conn*,int ) ;
 int iscsi_tcp_recv_segment_is_hdr (struct iscsi_tcp_conn*) ;
 scalar_t__ likely (int) ;
 int log_debug (int,char*,struct iscsi_conn*,struct sk_buff*,int ,int ) ;
 int pr_info (char*,struct iscsi_conn*,struct sk_buff*) ;
 int read_pdu_skb (struct iscsi_conn*,struct sk_buff*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
skb_read_pdu_bhs(struct cxgbi_sock *csk, struct iscsi_conn *conn,
   struct sk_buff *skb)
{
 struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
 int err;

 log_debug(1 << CXGBI_DBG_PDU_RX,
  "conn 0x%p, skb 0x%p, len %u, flag 0x%lx.\n",
  conn, skb, skb->len, cxgbi_skcb_flags(skb));

 if (!iscsi_tcp_recv_segment_is_hdr(tcp_conn)) {
  pr_info("conn 0x%p, skb 0x%p, not hdr.\n", conn, skb);
  iscsi_conn_failure(conn, ISCSI_ERR_PROTO);
  return -EIO;
 }

 if (conn->hdrdgst_en &&
     cxgbi_skcb_test_flag(skb, SKCBF_RX_HCRC_ERR)) {
  pr_info("conn 0x%p, skb 0x%p, hcrc.\n", conn, skb);
  iscsi_conn_failure(conn, ISCSI_ERR_HDR_DGST);
  return -EIO;
 }

 if (cxgbi_skcb_test_flag(skb, SKCBF_RX_ISCSI_COMPL) &&
     cxgbi_skcb_test_flag(skb, SKCBF_RX_DATA_DDPD)) {






  itt_t itt = ((struct iscsi_data *)skb->data)->itt;
  struct iscsi_task *task = iscsi_itt_to_ctask(conn, itt);
  u32 data_sn = be32_to_cpu(((struct iscsi_data *)
       skb->data)->datasn);
  if (task && task->sc) {
   struct iscsi_tcp_task *tcp_task = task->dd_data;

   tcp_task->exp_datasn = data_sn;
  }
 }

 err = read_pdu_skb(conn, skb, 0, 0);
 if (likely(err >= 0)) {
  struct iscsi_hdr *hdr = (struct iscsi_hdr *)skb->data;
  u8 opcode = hdr->opcode & ISCSI_OPCODE_MASK;

  if (unlikely(opcode == ISCSI_OP_LOGOUT_RSP))
   cxgbi_sock_set_flag(csk, CTPF_LOGOUT_RSP_RCVD);
 }

 return err;
}
