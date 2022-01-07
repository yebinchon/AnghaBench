
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct rtllib_hdr_3addr {int frame_ctl; int addr3; int addr2; int addr1; } ;
struct TYPE_4__ {int bssid; } ;
struct rtllib_device {TYPE_2__ current_network; TYPE_1__* dev; int tx_headroom; } ;
struct TYPE_3__ {int dev_addr; } ;


 int RTLLIB_FCTL_PM ;
 int RTLLIB_FCTL_TODS ;
 int RTLLIB_FTYPE_DATA ;
 int RTLLIB_STYPE_NULLFUNC ;
 int cpu_to_le16 (int) ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int ether_addr_copy (int ,int ) ;
 struct rtllib_hdr_3addr* skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int ) ;

__attribute__((used)) static struct sk_buff *rtllib_null_func(struct rtllib_device *ieee, short pwr)
{
 struct sk_buff *skb;
 struct rtllib_hdr_3addr *hdr;

 skb = dev_alloc_skb(sizeof(struct rtllib_hdr_3addr)+ieee->tx_headroom);
 if (!skb)
  return ((void*)0);

 skb_reserve(skb, ieee->tx_headroom);

 hdr = skb_put(skb, sizeof(struct rtllib_hdr_3addr));

 ether_addr_copy(hdr->addr1, ieee->current_network.bssid);
 ether_addr_copy(hdr->addr2, ieee->dev->dev_addr);
 ether_addr_copy(hdr->addr3, ieee->current_network.bssid);

 hdr->frame_ctl = cpu_to_le16(RTLLIB_FTYPE_DATA |
  RTLLIB_STYPE_NULLFUNC | RTLLIB_FCTL_TODS |
  (pwr ? RTLLIB_FCTL_PM : 0));

 return skb;


}
