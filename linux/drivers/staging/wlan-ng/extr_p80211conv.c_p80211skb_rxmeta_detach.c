
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int cb; } ;
struct p80211_rxmeta {int dummy; } ;
struct p80211_frmmeta {struct p80211_rxmeta* rx; } ;


 int kfree (struct p80211_rxmeta*) ;
 int memset (int ,int ,int) ;
 struct p80211_frmmeta* p80211skb_frmmeta (struct sk_buff*) ;
 int pr_debug (char*) ;

void p80211skb_rxmeta_detach(struct sk_buff *skb)
{
 struct p80211_rxmeta *rxmeta;
 struct p80211_frmmeta *frmmeta;


 if (!skb) {
  pr_debug("Called w/ null skb.\n");
  return;
 }
 frmmeta = p80211skb_frmmeta(skb);
 if (!frmmeta) {
  pr_debug("Called w/ bad frmmeta magic.\n");
  return;
 }
 rxmeta = frmmeta->rx;
 if (!rxmeta) {
  pr_debug("Called w/ bad rxmeta ptr.\n");
  return;
 }


 kfree(rxmeta);


 memset(skb->cb, 0, sizeof(skb->cb));
}
