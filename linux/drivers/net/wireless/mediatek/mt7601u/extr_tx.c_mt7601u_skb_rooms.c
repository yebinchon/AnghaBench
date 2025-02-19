
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct mt76_txwi {int dummy; } ;
struct mt7601u_dev {int dummy; } ;


 int ieee80211_get_hdrlen_from_skb (struct sk_buff*) ;
 int skb_cow (struct sk_buff*,int) ;

__attribute__((used)) static int mt7601u_skb_rooms(struct mt7601u_dev *dev, struct sk_buff *skb)
{
 int hdr_len = ieee80211_get_hdrlen_from_skb(skb);
 u32 need_head;

 need_head = sizeof(struct mt76_txwi) + 4;
 if (hdr_len % 4)
  need_head += 2;

 return skb_cow(skb, need_head);
}
