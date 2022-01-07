
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct cxgbit_sock {int rx_credits; int rcv_win; int rcv_nxt; int tid; } ;
struct cxgbit_lro_pdu_cb {int flags; int seq; } ;
struct cxgbit_lro_cb {scalar_t__ pdu_totallen; } ;


 int PDUCBF_RX_HDR ;
 int cxgbit_lro_skb_dump (struct sk_buff*) ;
 int cxgbit_process_lro_skb (struct cxgbit_sock*,struct sk_buff*) ;
 int cxgbit_rx_data_ack (struct cxgbit_sock*) ;
 struct cxgbit_lro_cb* cxgbit_skb_lro_cb (struct sk_buff*) ;
 struct cxgbit_lro_pdu_cb* cxgbit_skb_lro_pdu_cb (struct sk_buff*,int ) ;
 int pr_info (char*,struct cxgbit_sock*,int ,int ,int ) ;

__attribute__((used)) static int cxgbit_rx_lro_skb(struct cxgbit_sock *csk, struct sk_buff *skb)
{
 struct cxgbit_lro_cb *lro_cb = cxgbit_skb_lro_cb(skb);
 struct cxgbit_lro_pdu_cb *pdu_cb = cxgbit_skb_lro_pdu_cb(skb, 0);
 int ret = -1;

 if ((pdu_cb->flags & PDUCBF_RX_HDR) &&
     (pdu_cb->seq != csk->rcv_nxt)) {
  pr_info("csk 0x%p, tid 0x%x, seq 0x%x != 0x%x.\n",
   csk, csk->tid, pdu_cb->seq, csk->rcv_nxt);
  cxgbit_lro_skb_dump(skb);
  return ret;
 }

 csk->rcv_nxt += lro_cb->pdu_totallen;

 ret = cxgbit_process_lro_skb(csk, skb);

 csk->rx_credits += lro_cb->pdu_totallen;

 if (csk->rx_credits >= (csk->rcv_win / 4))
  cxgbit_rx_data_ack(csk);

 return ret;
}
