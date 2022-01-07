
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl1251 {scalar_t__ state; int next_tx_complete; int tx_queue_stopped; TYPE_1__* data_path; int wl_lock; int hw; int tx_work; int tx_queue; } ;
struct tx_result {int done_1; int done_2; } ;
typedef int result ;
struct TYPE_2__ {scalar_t__ tx_complete_addr; } ;


 int ARRAY_SIZE (struct tx_result*) ;
 int DEBUG_TX ;
 int FW_TX_CMPLT_BLOCK_SIZE ;
 scalar_t__ WL1251_STATE_ON ;
 int WL1251_TX_QUEUE_LOW_WATERMARK ;
 int ieee80211_queue_work (int ,int *) ;
 int ieee80211_wake_queues (int ) ;
 int skb_queue_len (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_mem_read (struct wl1251*,scalar_t__,struct tx_result*,int) ;
 int wl1251_mem_write (struct wl1251*,scalar_t__,struct tx_result*,int) ;
 int wl1251_tx_packet_cb (struct wl1251*,struct tx_result*) ;

void wl1251_tx_complete(struct wl1251 *wl)
{
 int i, result_index, num_complete = 0, queue_len;
 struct tx_result result[FW_TX_CMPLT_BLOCK_SIZE], *result_ptr;
 unsigned long flags;

 if (unlikely(wl->state != WL1251_STATE_ON))
  return;


 wl1251_mem_read(wl, wl->data_path->tx_complete_addr,
       result, sizeof(result));

 result_index = wl->next_tx_complete;

 for (i = 0; i < ARRAY_SIZE(result); i++) {
  result_ptr = &result[result_index];

  if (result_ptr->done_1 == 1 &&
      result_ptr->done_2 == 1) {
   wl1251_tx_packet_cb(wl, result_ptr);

   result_ptr->done_1 = 0;
   result_ptr->done_2 = 0;

   result_index = (result_index + 1) &
    (FW_TX_CMPLT_BLOCK_SIZE - 1);
   num_complete++;
  } else {
   break;
  }
 }

 queue_len = skb_queue_len(&wl->tx_queue);

 if ((num_complete > 0) && (queue_len > 0)) {

  wl1251_debug(DEBUG_TX, "tx_complete: reschedule tx_work");
  ieee80211_queue_work(wl->hw, &wl->tx_work);
 }

 if (wl->tx_queue_stopped &&
     queue_len <= WL1251_TX_QUEUE_LOW_WATERMARK) {

  wl1251_debug(DEBUG_TX, "tx_complete: waking queues");
  spin_lock_irqsave(&wl->wl_lock, flags);
  ieee80211_wake_queues(wl->hw);
  wl->tx_queue_stopped = 0;
  spin_unlock_irqrestore(&wl->wl_lock, flags);
 }


 if (num_complete) {




  if (result_index > wl->next_tx_complete) {

   wl1251_mem_write(wl,
      wl->data_path->tx_complete_addr +
      (wl->next_tx_complete *
       sizeof(struct tx_result)),
      &result[wl->next_tx_complete],
      num_complete *
      sizeof(struct tx_result));


  } else if (result_index < wl->next_tx_complete) {

   wl1251_mem_write(wl,
      wl->data_path->tx_complete_addr +
      (wl->next_tx_complete *
       sizeof(struct tx_result)),
      &result[wl->next_tx_complete],
      (FW_TX_CMPLT_BLOCK_SIZE -
       wl->next_tx_complete) *
      sizeof(struct tx_result));

   wl1251_mem_write(wl,
      wl->data_path->tx_complete_addr,
      result,
      (num_complete -
       FW_TX_CMPLT_BLOCK_SIZE +
       wl->next_tx_complete) *
      sizeof(struct tx_result));

  } else {

   wl1251_mem_write(wl,
      wl->data_path->tx_complete_addr,
      result,
      FW_TX_CMPLT_BLOCK_SIZE *
      sizeof(struct tx_result));
  }

 }

 wl->next_tx_complete = result_index;
}
