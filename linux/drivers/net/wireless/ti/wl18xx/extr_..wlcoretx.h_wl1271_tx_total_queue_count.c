
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {scalar_t__* tx_queue_count; } ;


 int NUM_TX_QUEUES ;

__attribute__((used)) static inline int wl1271_tx_total_queue_count(struct wl1271 *wl)
{
 int i, count = 0;

 for (i = 0; i < NUM_TX_QUEUES; i++)
  count += wl->tx_queue_count[i];

 return count;
}
