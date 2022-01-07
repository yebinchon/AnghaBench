
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_qdio_out_q {unsigned int queue_no; int used_buffers; struct qeth_qdio_out_buffer** bufs; struct qeth_card* card; } ;
struct qeth_qdio_out_buffer {scalar_t__ bytes; int skb_list; } ;
struct qeth_card {struct net_device* dev; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct napi_struct {int dummy; } ;


 int CARD_DDEV (struct qeth_card*) ;
 unsigned int QDIO_BUFNR (unsigned int) ;
 unsigned int QDIO_MAX_BUFFERS_PER_Q ;
 int QETH_TXQ_STAT_INC (struct qeth_qdio_out_q*,int ) ;
 int atomic_sub (int,int *) ;
 int completion_yield ;
 int napi_complete (struct napi_struct*) ;
 scalar_t__ napi_complete_done (struct napi_struct*,int ) ;
 int napi_schedule (struct napi_struct*) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int ) ;
 int netdev_tx_completed_queue (struct netdev_queue*,unsigned int,unsigned int) ;
 scalar_t__ netif_tx_queue_stopped (struct netdev_queue*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 int qdio_inspect_queue (int ,unsigned int,int,unsigned int*,unsigned int*) ;
 int qeth_cleanup_handled_pending (struct qeth_qdio_out_q*,unsigned int,int) ;
 int qeth_handle_send_error (struct qeth_card*,struct qeth_qdio_out_buffer*,unsigned int) ;
 int qeth_iqd_translate_txq (struct net_device*,unsigned int) ;
 int qeth_iqd_tx_complete (struct qeth_qdio_out_q*,unsigned int,unsigned int,int) ;
 struct qeth_qdio_out_q* qeth_napi_to_out_queue (struct napi_struct*) ;
 scalar_t__ qeth_out_queue_is_empty (struct qeth_qdio_out_q*) ;
 int qeth_out_queue_is_full (struct qeth_qdio_out_q*) ;
 int qeth_tx_arm_timer (struct qeth_qdio_out_q*) ;
 scalar_t__ skb_queue_len (int *) ;

__attribute__((used)) static int qeth_tx_poll(struct napi_struct *napi, int budget)
{
 struct qeth_qdio_out_q *queue = qeth_napi_to_out_queue(napi);
 unsigned int queue_no = queue->queue_no;
 struct qeth_card *card = queue->card;
 struct net_device *dev = card->dev;
 unsigned int work_done = 0;
 struct netdev_queue *txq;

 txq = netdev_get_tx_queue(dev, qeth_iqd_translate_txq(dev, queue_no));

 while (1) {
  unsigned int start, error, i;
  unsigned int packets = 0;
  unsigned int bytes = 0;
  int completed;

  if (qeth_out_queue_is_empty(queue)) {
   napi_complete(napi);
   return 0;
  }


  if (work_done >= QDIO_MAX_BUFFERS_PER_Q) {
   QETH_TXQ_STAT_INC(queue, completion_yield);
   if (napi_complete_done(napi, 0))
    napi_schedule(napi);
   return 0;
  }

  completed = qdio_inspect_queue(CARD_DDEV(card), queue_no, 0,
            &start, &error);
  if (completed <= 0) {

   if (napi_complete_done(napi, 0))
    qeth_tx_arm_timer(queue);
   return 0;
  }

  for (i = start; i < start + completed; i++) {
   struct qeth_qdio_out_buffer *buffer;
   unsigned int bidx = QDIO_BUFNR(i);

   buffer = queue->bufs[bidx];
   packets += skb_queue_len(&buffer->skb_list);
   bytes += buffer->bytes;

   qeth_handle_send_error(card, buffer, error);
   qeth_iqd_tx_complete(queue, bidx, error, budget);
   qeth_cleanup_handled_pending(queue, bidx, 0);
  }

  netdev_tx_completed_queue(txq, packets, bytes);
  atomic_sub(completed, &queue->used_buffers);
  work_done += completed;






  if (netif_tx_queue_stopped(txq) &&
      !qeth_out_queue_is_full(queue))
   netif_tx_wake_queue(txq);
 }
}
