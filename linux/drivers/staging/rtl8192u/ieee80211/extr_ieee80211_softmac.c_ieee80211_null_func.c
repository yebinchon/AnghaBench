
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct rtl_80211_hdr_3addr {int frame_ctl; int addr3; int addr2; int addr1; } ;
struct TYPE_4__ {int bssid; } ;
struct ieee80211_device {TYPE_2__ current_network; TYPE_1__* dev; } ;
struct TYPE_3__ {int dev_addr; } ;


 int ETH_ALEN ;
 int IEEE80211_FCTL_PM ;
 int IEEE80211_FCTL_TODS ;
 int IEEE80211_FTYPE_DATA ;
 int IEEE80211_STYPE_NULLFUNC ;
 int cpu_to_le16 (int) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int memcpy (int ,int ,int ) ;
 struct rtl_80211_hdr_3addr* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static struct sk_buff *ieee80211_null_func(struct ieee80211_device *ieee,
        short pwr)
{
 struct sk_buff *skb;
 struct rtl_80211_hdr_3addr *hdr;

 skb = dev_alloc_skb(sizeof(struct rtl_80211_hdr_3addr));

 if (!skb)
  return ((void*)0);

 hdr = skb_put(skb, sizeof(struct rtl_80211_hdr_3addr));

 memcpy(hdr->addr1, ieee->current_network.bssid, ETH_ALEN);
 memcpy(hdr->addr2, ieee->dev->dev_addr, ETH_ALEN);
 memcpy(hdr->addr3, ieee->current_network.bssid, ETH_ALEN);

 hdr->frame_ctl = cpu_to_le16(IEEE80211_FTYPE_DATA |
         IEEE80211_STYPE_NULLFUNC | IEEE80211_FCTL_TODS |
         (pwr ? IEEE80211_FCTL_PM : 0));

 return skb;
}
