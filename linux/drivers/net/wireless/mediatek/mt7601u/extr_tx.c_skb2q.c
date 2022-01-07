
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;


 int MT_TXQ_BE ;
 int MT_TXQ_PSD ;
 scalar_t__ WARN_ON (int) ;
 int q2hwq (int) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 int skb_set_queue_mapping (struct sk_buff*,int) ;

__attribute__((used)) static u8 skb2q(struct sk_buff *skb)
{
 int qid = skb_get_queue_mapping(skb);

 if (WARN_ON(qid >= MT_TXQ_PSD)) {
  qid = MT_TXQ_BE;
  skb_set_queue_mapping(skb, qid);
 }

 return q2hwq(qid);
}
