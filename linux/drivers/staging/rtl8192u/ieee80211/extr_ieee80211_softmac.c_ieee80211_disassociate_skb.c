
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_network {int bssid; } ;
struct TYPE_4__ {int addr3; int addr2; int addr1; scalar_t__ duration_id; void* frame_ctl; } ;
struct ieee80211_disassoc {void* reason; TYPE_2__ header; } ;
struct ieee80211_device {TYPE_1__* dev; } ;
struct TYPE_3__ {int dev_addr; } ;


 int ETH_ALEN ;
 int IEEE80211_STYPE_DISASSOC ;
 void* cpu_to_le16 (int ) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int memcpy (int ,int ,int ) ;
 struct ieee80211_disassoc* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static inline struct sk_buff *ieee80211_disassociate_skb(struct ieee80211_network *beacon,
        struct ieee80211_device *ieee,
        u8 asRsn)
{
 struct sk_buff *skb;
 struct ieee80211_disassoc *disass;

 skb = dev_alloc_skb(sizeof(struct ieee80211_disassoc));
 if (!skb)
  return ((void*)0);

 disass = skb_put(skb, sizeof(struct ieee80211_disassoc));
 disass->header.frame_ctl = cpu_to_le16(IEEE80211_STYPE_DISASSOC);
 disass->header.duration_id = 0;

 memcpy(disass->header.addr1, beacon->bssid, ETH_ALEN);
 memcpy(disass->header.addr2, ieee->dev->dev_addr, ETH_ALEN);
 memcpy(disass->header.addr3, beacon->bssid, ETH_ALEN);

 disass->reason = cpu_to_le16(asRsn);
 return skb;
}
