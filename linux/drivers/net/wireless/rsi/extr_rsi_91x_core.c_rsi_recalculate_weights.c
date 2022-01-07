
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct wmm_qinfo {int pkt_contended; scalar_t__ weight; scalar_t__ wme_params; } ;
struct rsi_common {scalar_t__ min_weight; int * tx_queue; struct wmm_qinfo* tx_qinfo; } ;


 size_t NUM_EDCA_QUEUES ;
 scalar_t__ skb_queue_len (int *) ;

__attribute__((used)) static bool rsi_recalculate_weights(struct rsi_common *common)
{
 struct wmm_qinfo *tx_qinfo = common->tx_qinfo;
 bool recontend_queue = 0;
 u8 ii = 0;
 u32 q_len = 0;

 for (ii = 0; ii < NUM_EDCA_QUEUES; ii++) {
  q_len = skb_queue_len(&common->tx_queue[ii]);

  if (q_len) {
   if (tx_qinfo[ii].pkt_contended) {
    tx_qinfo[ii].weight =
    ((tx_qinfo[ii].weight > common->min_weight) ?
     tx_qinfo[ii].weight - common->min_weight : 0);
   } else {
    tx_qinfo[ii].pkt_contended = 1;
    tx_qinfo[ii].weight = tx_qinfo[ii].wme_params;
    recontend_queue = 1;
   }
  } else {
   tx_qinfo[ii].weight = 0;
   tx_qinfo[ii].pkt_contended = 0;
  }
 }

 return recontend_queue;
}
