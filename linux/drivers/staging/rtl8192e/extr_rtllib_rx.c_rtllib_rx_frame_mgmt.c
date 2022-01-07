
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct rtllib_rx_stats {int len; } ;
struct rtllib_hdr_3addr {int addr1; } ;
struct rtllib_device {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev_addr; } ;


 int ETH_ALEN ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int rtllib_rx_frame_softmac (struct rtllib_device*,struct sk_buff*,struct rtllib_rx_stats*,int ,int ) ;
 int rtllib_rx_mgt (struct rtllib_device*,struct sk_buff*,struct rtllib_rx_stats*) ;

__attribute__((used)) static inline int
rtllib_rx_frame_mgmt(struct rtllib_device *ieee, struct sk_buff *skb,
   struct rtllib_rx_stats *rx_stats, u16 type,
   u16 stype)
{




 struct rtllib_hdr_3addr *hdr = (struct rtllib_hdr_3addr *)skb->data;

 rx_stats->len = skb->len;
 rtllib_rx_mgt(ieee, skb, rx_stats);
 if ((memcmp(hdr->addr1, ieee->dev->dev_addr, ETH_ALEN))) {
  dev_kfree_skb_any(skb);
  return 0;
 }
 rtllib_rx_frame_softmac(ieee, skb, rx_stats, type, stype);

 dev_kfree_skb_any(skb);

 return 0;
}
