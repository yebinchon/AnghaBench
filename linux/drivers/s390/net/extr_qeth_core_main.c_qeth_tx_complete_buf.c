
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ ip_summed; } ;
struct qeth_qdio_out_q {int dummy; } ;
struct qeth_qdio_out_buffer {scalar_t__ next_element_to_fill; int skb_list; int state; struct qeth_qdio_out_q* q; } ;
struct TYPE_2__ {int gso_segs; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ QETH_QDIO_BUF_IN_CQ ;
 scalar_t__ QETH_QDIO_BUF_PENDING ;
 int QETH_TXQ_STAT_ADD (struct qeth_qdio_out_q*,int ,unsigned int) ;
 int QETH_TXQ_STAT_INC (struct qeth_qdio_out_q*,int ) ;
 int TX_NOTIFY_GENERALERROR ;
 int WARN_ON_ONCE (int) ;
 struct sk_buff* __skb_dequeue (int *) ;
 scalar_t__ atomic_read (int *) ;
 int buf_elements ;
 int bufs ;
 int napi_consume_skb (struct sk_buff*,int) ;
 unsigned int qdisc_pkt_len (struct sk_buff*) ;
 int qeth_notify_skbs (struct qeth_qdio_out_q*,struct qeth_qdio_out_buffer*,int ) ;
 int skb_is_gso (struct sk_buff*) ;
 scalar_t__ skb_is_nonlinear (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int skbs_csum ;
 int skbs_sg ;
 int skbs_tso ;
 int tso_bytes ;
 int tx_bytes ;
 int tx_errors ;
 int tx_packets ;

__attribute__((used)) static void qeth_tx_complete_buf(struct qeth_qdio_out_buffer *buf, bool error,
     int budget)
{
 struct qeth_qdio_out_q *queue = buf->q;
 struct sk_buff *skb;


 WARN_ON_ONCE(atomic_read(&buf->state) == QETH_QDIO_BUF_IN_CQ);

 if (atomic_read(&buf->state) == QETH_QDIO_BUF_PENDING)
  qeth_notify_skbs(queue, buf, TX_NOTIFY_GENERALERROR);


 if (buf->next_element_to_fill == 0)
  return;

 QETH_TXQ_STAT_INC(queue, bufs);
 QETH_TXQ_STAT_ADD(queue, buf_elements, buf->next_element_to_fill);
 while ((skb = __skb_dequeue(&buf->skb_list)) != ((void*)0)) {
  unsigned int bytes = qdisc_pkt_len(skb);
  bool is_tso = skb_is_gso(skb);
  unsigned int packets;

  packets = is_tso ? skb_shinfo(skb)->gso_segs : 1;
  if (error) {
   QETH_TXQ_STAT_ADD(queue, tx_errors, packets);
  } else {
   QETH_TXQ_STAT_ADD(queue, tx_packets, packets);
   QETH_TXQ_STAT_ADD(queue, tx_bytes, bytes);
   if (skb->ip_summed == CHECKSUM_PARTIAL)
    QETH_TXQ_STAT_ADD(queue, skbs_csum, packets);
   if (skb_is_nonlinear(skb))
    QETH_TXQ_STAT_INC(queue, skbs_sg);
   if (is_tso) {
    QETH_TXQ_STAT_INC(queue, skbs_tso);
    QETH_TXQ_STAT_ADD(queue, tso_bytes, bytes);
   }
  }

  napi_consume_skb(skb, budget);
 }
}
