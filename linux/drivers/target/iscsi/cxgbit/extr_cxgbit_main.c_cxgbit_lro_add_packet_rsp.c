
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct cxgbit_lro_pdu_cb {int flags; int complete; scalar_t__ pdulen; int ddigest; } ;
struct cxgbit_lro_cb {int complete; int pdu_idx; int pdu_totallen; int csk; } ;
struct cpl_rx_iscsi_ddp {int len; int ulp_crc; int ddpvld; } ;
typedef int __be64 ;


 int PDUCBF_RX_HDR ;
 int PDUCBF_RX_STATUS ;
 int be32_to_cpu (int ) ;
 int cxgbit_process_ddpvld (int ,struct cxgbit_lro_pdu_cb*,int ) ;
 struct cxgbit_lro_cb* cxgbit_skb_lro_cb (struct sk_buff*) ;
 struct cxgbit_lro_pdu_cb* cxgbit_skb_lro_pdu_cb (struct sk_buff*,int ) ;
 int ntohl (int ) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static void
cxgbit_lro_add_packet_rsp(struct sk_buff *skb, u8 op, const __be64 *rsp)
{
 struct cxgbit_lro_cb *lro_cb = cxgbit_skb_lro_cb(skb);
 struct cxgbit_lro_pdu_cb *pdu_cb = cxgbit_skb_lro_pdu_cb(skb,
      lro_cb->pdu_idx);
 struct cpl_rx_iscsi_ddp *cpl = (struct cpl_rx_iscsi_ddp *)(rsp + 1);

 cxgbit_process_ddpvld(lro_cb->csk, pdu_cb, be32_to_cpu(cpl->ddpvld));

 pdu_cb->flags |= PDUCBF_RX_STATUS;
 pdu_cb->ddigest = ntohl(cpl->ulp_crc);
 pdu_cb->pdulen = ntohs(cpl->len);

 if (pdu_cb->flags & PDUCBF_RX_HDR)
  pdu_cb->complete = 1;

 lro_cb->pdu_totallen += pdu_cb->pdulen;
 lro_cb->complete = 1;
 lro_cb->pdu_idx++;
}
