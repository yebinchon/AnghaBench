
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tx_ts_record {int tx_cur_seq; } ;
struct ts_common_info {int dummy; } ;
struct sk_buff {int priority; int data; } ;
struct ieee80211_device {int dummy; } ;


 int GetTs (struct ieee80211_device*,struct ts_common_info**,int *,int ,int ,int) ;
 scalar_t__ IsQoSDataFrame (int ) ;
 int TX_DIR ;
 scalar_t__ is_multicast_ether_addr (int *) ;

__attribute__((used)) static void ieee80211_query_seqnum(struct ieee80211_device *ieee,
       struct sk_buff *skb, u8 *dst)
{
 if (is_multicast_ether_addr(dst))
  return;
 if (IsQoSDataFrame(skb->data)) {
  struct tx_ts_record *pTS = ((void*)0);
  if (!GetTs(ieee, (struct ts_common_info **)(&pTS), dst, skb->priority, TX_DIR, 1)) {
   return;
  }
  pTS->tx_cur_seq = (pTS->tx_cur_seq + 1) % 4096;
 }
}
