
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct qeth_qdio_out_q {size_t bulk_start; unsigned int max_elements; struct qeth_hdr* prev_hdr; int used_buffers; struct qeth_qdio_out_buffer** bufs; } ;
struct qeth_qdio_out_buffer {unsigned int next_element_to_fill; unsigned int bytes; int state; } ;
struct qeth_hdr {int dummy; } ;
struct qeth_card {int dev; } ;
struct netdev_queue {int dummy; } ;


 int EBUSY ;
 scalar_t__ QDIO_MAX_BUFFERS_PER_Q ;
 scalar_t__ QETH_QDIO_BUF_EMPTY ;
 int QETH_QDIO_BUF_PRIMED ;
 int QETH_TXQ_STAT_INC (struct qeth_qdio_out_q*,int) ;
 int __netdev_tx_sent_queue (struct netdev_queue*,unsigned int,int) ;
 scalar_t__ atomic_inc_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;
 scalar_t__ netdev_xmit_more () ;
 int netif_tx_start_queue (struct netdev_queue*) ;
 int netif_tx_stop_queue (struct netdev_queue*) ;
 unsigned int qdisc_pkt_len (struct sk_buff*) ;
 unsigned int qeth_fill_buffer (struct qeth_qdio_out_buffer*,struct sk_buff*,struct qeth_hdr*,unsigned int,unsigned int) ;
 int qeth_flush_queue (struct qeth_qdio_out_q*) ;
 int qeth_iqd_may_bulk (struct qeth_qdio_out_q*,struct qeth_qdio_out_buffer*,struct sk_buff*,struct qeth_hdr*) ;
 int qeth_out_queue_is_full (struct qeth_qdio_out_q*) ;
 int skb_get_queue_mapping (struct sk_buff*) ;

__attribute__((used)) static int __qeth_xmit(struct qeth_card *card, struct qeth_qdio_out_q *queue,
         struct sk_buff *skb, unsigned int elements,
         struct qeth_hdr *hdr, unsigned int offset,
         unsigned int hd_len)
{
 struct qeth_qdio_out_buffer *buffer = queue->bufs[queue->bulk_start];
 unsigned int bytes = qdisc_pkt_len(skb);
 unsigned int next_element;
 struct netdev_queue *txq;
 bool stopped = 0;
 bool flush;

 txq = netdev_get_tx_queue(card->dev, skb_get_queue_mapping(skb));




 if (atomic_read(&buffer->state) != QETH_QDIO_BUF_EMPTY)
  return -EBUSY;

 if ((buffer->next_element_to_fill + elements > queue->max_elements) ||
     !qeth_iqd_may_bulk(queue, buffer, skb, hdr)) {
  atomic_set(&buffer->state, QETH_QDIO_BUF_PRIMED);
  qeth_flush_queue(queue);
  buffer = queue->bufs[queue->bulk_start];


  if (atomic_read(&buffer->state) != QETH_QDIO_BUF_EMPTY)
   return -EBUSY;
 }

 if (buffer->next_element_to_fill == 0 &&
     atomic_inc_return(&queue->used_buffers) >= QDIO_MAX_BUFFERS_PER_Q) {



  QETH_TXQ_STAT_INC(queue, stopped);
  netif_tx_stop_queue(txq);
  stopped = 1;
 }

 next_element = qeth_fill_buffer(buffer, skb, hdr, offset, hd_len);
 buffer->bytes += bytes;
 queue->prev_hdr = hdr;

 flush = __netdev_tx_sent_queue(txq, bytes,
           !stopped && netdev_xmit_more());

 if (flush || next_element >= queue->max_elements) {
  atomic_set(&buffer->state, QETH_QDIO_BUF_PRIMED);
  qeth_flush_queue(queue);
 }

 if (stopped && !qeth_out_queue_is_full(queue))
  netif_tx_start_queue(txq);
 return 0;
}
