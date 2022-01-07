
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct tx_ts_record {int TxCurSeq; } ;
struct ts_common_info {int dummy; } ;
struct sk_buff {int priority; int data; } ;
struct rtllib_device {int dummy; } ;


 int GetTs (struct rtllib_device*,struct ts_common_info**,int *,int ,int ,int) ;
 scalar_t__ IsQoSDataFrame (int ) ;
 int TX_DIR ;
 scalar_t__ is_multicast_ether_addr (int *) ;

__attribute__((used)) static u16 rtllib_query_seqnum(struct rtllib_device *ieee, struct sk_buff *skb,
          u8 *dst)
{
 u16 seqnum = 0;

 if (is_multicast_ether_addr(dst))
  return 0;
 if (IsQoSDataFrame(skb->data)) {
  struct tx_ts_record *pTS = ((void*)0);

  if (!GetTs(ieee, (struct ts_common_info **)(&pTS), dst,
      skb->priority, TX_DIR, 1))
   return 0;
  seqnum = pTS->TxCurSeq;
  pTS->TxCurSeq = (pTS->TxCurSeq+1)%4096;
  return seqnum;
 }
 return 0;
}
