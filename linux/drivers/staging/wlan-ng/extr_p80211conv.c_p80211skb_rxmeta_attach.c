
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlandevice {int name; int netdev; } ;
struct sk_buff {scalar_t__ cb; } ;
struct p80211_rxmeta {int hosttime; struct wlandevice* wlandev; } ;
struct p80211_frmmeta {struct p80211_rxmeta* rx; int magic; } ;


 int GFP_ATOMIC ;
 int P80211_FRMMETA_MAGIC ;
 int jiffies ;
 struct p80211_rxmeta* kzalloc (int,int ) ;
 int memset (scalar_t__,int ,int) ;
 int netdev_err (int ,char*,int ) ;
 scalar_t__ p80211skb_rxmeta (struct sk_buff*) ;

int p80211skb_rxmeta_attach(struct wlandevice *wlandev, struct sk_buff *skb)
{
 int result = 0;
 struct p80211_rxmeta *rxmeta;
 struct p80211_frmmeta *frmmeta;


 if (p80211skb_rxmeta(skb)) {
  netdev_err(wlandev->netdev,
      "%s: RXmeta already attached!\n", wlandev->name);
  result = 0;
  goto exit;
 }


 rxmeta = kzalloc(sizeof(*rxmeta), GFP_ATOMIC);

 if (!rxmeta) {
  result = 1;
  goto exit;
 }


 rxmeta->wlandev = wlandev;
 rxmeta->hosttime = jiffies;


 memset(skb->cb, 0, sizeof(struct p80211_frmmeta));
 frmmeta = (struct p80211_frmmeta *)(skb->cb);
 frmmeta->magic = P80211_FRMMETA_MAGIC;
 frmmeta->rx = rxmeta;
exit:
 return result;
}
