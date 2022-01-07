
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct p80211_frmmeta {scalar_t__ magic; } ;


 scalar_t__ P80211_FRMMETA_MAGIC ;

__attribute__((used)) static inline struct p80211_frmmeta *p80211skb_frmmeta(struct sk_buff *skb)
{
 struct p80211_frmmeta *frmmeta = (struct p80211_frmmeta *)skb->cb;

 return frmmeta->magic == P80211_FRMMETA_MAGIC ? frmmeta : ((void*)0);
}
