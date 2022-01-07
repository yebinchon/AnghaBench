
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct wmm_qinfo {int weight; scalar_t__ pkt_contended; } ;
struct rsi_common {int min_weight; int * tx_queue; struct wmm_qinfo* tx_qinfo; } ;


 size_t NUM_EDCA_QUEUES ;
 scalar_t__ skb_queue_len (int *) ;

__attribute__((used)) static u8 rsi_determine_min_weight_queue(struct rsi_common *common)
{
 struct wmm_qinfo *tx_qinfo = common->tx_qinfo;
 u32 q_len = 0;
 u8 ii = 0;

 for (ii = 0; ii < NUM_EDCA_QUEUES; ii++) {
  q_len = skb_queue_len(&common->tx_queue[ii]);
  if ((tx_qinfo[ii].pkt_contended) && q_len) {
   common->min_weight = tx_qinfo[ii].weight;
   break;
  }
 }
 return ii;
}
