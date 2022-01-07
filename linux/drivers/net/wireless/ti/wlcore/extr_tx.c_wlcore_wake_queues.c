
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int wl_lock; int hw; int * queue_stop_reasons; } ;
typedef enum wlcore_queue_stop_reason { ____Placeholder_wlcore_queue_stop_reason } wlcore_queue_stop_reason ;


 int NUM_TX_QUEUES ;
 int WARN_ON_ONCE (int) ;
 int WLCORE_NUM_MAC_ADDRESSES ;
 int ieee80211_wake_queues (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_clear_bit (int,int *) ;

void wlcore_wake_queues(struct wl1271 *wl,
   enum wlcore_queue_stop_reason reason)
{
 int i;
 unsigned long flags;

 spin_lock_irqsave(&wl->wl_lock, flags);


        for (i = 0; i < WLCORE_NUM_MAC_ADDRESSES * NUM_TX_QUEUES; i++)
  WARN_ON_ONCE(!test_and_clear_bit(reason,
       &wl->queue_stop_reasons[i]));




 ieee80211_wake_queues(wl->hw);

 spin_unlock_irqrestore(&wl->wl_lock, flags);
}
