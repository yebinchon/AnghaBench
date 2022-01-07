
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct rtllib_network {int bssid; } ;
struct TYPE_4__ {int addr3; int addr2; int addr1; scalar_t__ duration_id; void* frame_ctl; } ;
struct rtllib_disauth {void* reason; TYPE_2__ header; } ;
struct rtllib_device {TYPE_1__* dev; int tx_headroom; } ;
struct TYPE_3__ {int dev_addr; } ;


 int RTLLIB_STYPE_DEAUTH ;
 void* cpu_to_le16 (int ) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int ether_addr_copy (int ,int ) ;
 struct rtllib_disauth* skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int ) ;

__attribute__((used)) static inline struct sk_buff *
rtllib_disauth_skb(struct rtllib_network *beacon,
     struct rtllib_device *ieee, u16 asRsn)
{
 struct sk_buff *skb;
 struct rtllib_disauth *disauth;
 int len = sizeof(struct rtllib_disauth) + ieee->tx_headroom;

 skb = dev_alloc_skb(len);
 if (!skb)
  return ((void*)0);

 skb_reserve(skb, ieee->tx_headroom);

 disauth = skb_put(skb, sizeof(struct rtllib_disauth));
 disauth->header.frame_ctl = cpu_to_le16(RTLLIB_STYPE_DEAUTH);
 disauth->header.duration_id = 0;

 ether_addr_copy(disauth->header.addr1, beacon->bssid);
 ether_addr_copy(disauth->header.addr2, ieee->dev->dev_addr);
 ether_addr_copy(disauth->header.addr3, beacon->bssid);

 disauth->reason = cpu_to_le16(asRsn);
 return skb;
}
