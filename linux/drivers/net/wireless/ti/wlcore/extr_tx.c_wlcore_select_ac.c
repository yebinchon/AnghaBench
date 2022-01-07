
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct wl1271 {scalar_t__* tx_allocated_pkts; scalar_t__* tx_queue_count; } ;


 int NUM_TX_QUEUES ;
 int wl1271_tx_get_queue (int) ;

__attribute__((used)) static int wlcore_select_ac(struct wl1271 *wl)
{
 int i, q = -1, ac;
 u32 min_pkts = 0xffffffff;
 for (i = 0; i < NUM_TX_QUEUES; i++) {
  ac = wl1271_tx_get_queue(i);
  if (wl->tx_queue_count[ac] &&
      wl->tx_allocated_pkts[ac] < min_pkts) {
   q = ac;
   min_pkts = wl->tx_allocated_pkts[q];
  }
 }

 return q;
}
