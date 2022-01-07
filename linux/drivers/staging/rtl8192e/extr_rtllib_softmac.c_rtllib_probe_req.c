
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int addr3; int addr2; int addr1; scalar_t__ duration_id; int frame_ctl; } ;
struct rtllib_probe_request {TYPE_2__ header; } ;
struct TYPE_6__ {unsigned int ssid_len; int ssid; } ;
struct rtllib_device {TYPE_3__ current_network; TYPE_1__* dev; scalar_t__ tx_headroom; } ;
struct TYPE_4__ {int dev_addr; } ;


 int MFIE_TYPE_SSID ;
 int RTLLIB_STYPE_PROBE_REQ ;
 int cpu_to_le16 (int ) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int eth_broadcast_addr (int ) ;
 int ether_addr_copy (int ,int ) ;
 int memcpy (int *,int ,unsigned int) ;
 int rtllib_MFIE_Brate (struct rtllib_device*,int **) ;
 int rtllib_MFIE_Grate (struct rtllib_device*,int **) ;
 unsigned int rtllib_MFIE_rate_len (struct rtllib_device*) ;
 void* skb_put (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static inline struct sk_buff *rtllib_probe_req(struct rtllib_device *ieee)
{
 unsigned int len, rate_len;
 u8 *tag;
 struct sk_buff *skb;
 struct rtllib_probe_request *req;

 len = ieee->current_network.ssid_len;

 rate_len = rtllib_MFIE_rate_len(ieee);

 skb = dev_alloc_skb(sizeof(struct rtllib_probe_request) +
       2 + len + rate_len + ieee->tx_headroom);

 if (!skb)
  return ((void*)0);

 skb_reserve(skb, ieee->tx_headroom);

 req = skb_put(skb, sizeof(struct rtllib_probe_request));
 req->header.frame_ctl = cpu_to_le16(RTLLIB_STYPE_PROBE_REQ);
 req->header.duration_id = 0;

 eth_broadcast_addr(req->header.addr1);
 ether_addr_copy(req->header.addr2, ieee->dev->dev_addr);
 eth_broadcast_addr(req->header.addr3);

 tag = skb_put(skb, len + 2 + rate_len);

 *tag++ = MFIE_TYPE_SSID;
 *tag++ = len;
 memcpy(tag, ieee->current_network.ssid, len);
 tag += len;

 rtllib_MFIE_Brate(ieee, &tag);
 rtllib_MFIE_Grate(ieee, &tag);

 return skb;
}
