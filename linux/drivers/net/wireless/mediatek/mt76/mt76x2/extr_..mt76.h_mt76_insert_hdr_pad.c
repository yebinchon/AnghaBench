
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__* data; } ;


 int ieee80211_get_hdrlen_from_skb (struct sk_buff*) ;
 int memmove (scalar_t__*,scalar_t__*,int) ;
 int skb_push (struct sk_buff*,int) ;

__attribute__((used)) static inline void mt76_insert_hdr_pad(struct sk_buff *skb)
{
 int len = ieee80211_get_hdrlen_from_skb(skb);

 if (len % 4 == 0)
  return;

 skb_push(skb, 2);
 memmove(skb->data, skb->data + 2, len);

 skb->data[len] = 0;
 skb->data[len + 1] = 0;
}
