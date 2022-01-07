
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int addr3; int * addr2; int addr1; scalar_t__ duration_id; int frame_ctl; } ;
struct ieee80211_probe_request {TYPE_2__ header; } ;
struct TYPE_6__ {unsigned int ssid_len; int ssid; } ;
struct ieee80211_device {TYPE_3__ current_network; TYPE_1__* dev; scalar_t__ tx_headroom; } ;
struct TYPE_4__ {int dev_addr; } ;


 unsigned int ETH_ALEN ;
 int IEEE80211_STYPE_PROBE_REQ ;
 int MFIE_TYPE_SSID ;
 int cpu_to_le16 (int ) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int eth_broadcast_addr (int ) ;
 int ieee80211_MFIE_Brate (struct ieee80211_device*,int **) ;
 int ieee80211_MFIE_Grate (struct ieee80211_device*,int **) ;
 unsigned int ieee80211_MFIE_rate_len (struct ieee80211_device*) ;
 int memcpy (int *,int ,unsigned int) ;
 void* skb_put (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static inline struct sk_buff *ieee80211_probe_req(struct ieee80211_device *ieee)
{
 unsigned int len, rate_len;
 u8 *tag;
 struct sk_buff *skb;
 struct ieee80211_probe_request *req;

 len = ieee->current_network.ssid_len;

 rate_len = ieee80211_MFIE_rate_len(ieee);

 skb = dev_alloc_skb(sizeof(struct ieee80211_probe_request) +
       2 + len + rate_len + ieee->tx_headroom);
 if (!skb)
  return ((void*)0);

 skb_reserve(skb, ieee->tx_headroom);

 req = skb_put(skb, sizeof(struct ieee80211_probe_request));
 req->header.frame_ctl = cpu_to_le16(IEEE80211_STYPE_PROBE_REQ);
 req->header.duration_id = 0;

 eth_broadcast_addr(req->header.addr1);
 memcpy(req->header.addr2, ieee->dev->dev_addr, ETH_ALEN);
 eth_broadcast_addr(req->header.addr3);

 tag = skb_put(skb, len + 2 + rate_len);

 *tag++ = MFIE_TYPE_SSID;
 *tag++ = len;
 memcpy(tag, ieee->current_network.ssid, len);
 tag += len;

 ieee80211_MFIE_Brate(ieee, &tag);
 ieee80211_MFIE_Grate(ieee, &tag);
 return skb;
}
