
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; } ;
struct rtllib_device {TYPE_1__* dev; int tx_headroom; } ;
struct TYPE_4__ {void* frame_ctl; int addr1; int addr2; int addr3; } ;
struct rtllib_authentication {TYPE_2__ header; void* algorithm; void* transaction; void* status; } ;
struct TYPE_3__ {int * dev_addr; } ;


 int RTLLIB_STYPE_AUTH ;
 int WLAN_AUTH_OPEN ;
 void* cpu_to_le16 (int) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int ether_addr_copy (int ,int *) ;
 struct rtllib_authentication* skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int ) ;

__attribute__((used)) static struct sk_buff *rtllib_auth_resp(struct rtllib_device *ieee, int status,
     u8 *dest)
{
 struct sk_buff *skb = ((void*)0);
 struct rtllib_authentication *auth;
 int len = ieee->tx_headroom + sizeof(struct rtllib_authentication) + 1;

 skb = dev_alloc_skb(len);
 if (!skb)
  return ((void*)0);

 skb->len = sizeof(struct rtllib_authentication);

 skb_reserve(skb, ieee->tx_headroom);

 auth = skb_put(skb, sizeof(struct rtllib_authentication));

 auth->status = cpu_to_le16(status);
 auth->transaction = cpu_to_le16(2);
 auth->algorithm = cpu_to_le16(WLAN_AUTH_OPEN);

 ether_addr_copy(auth->header.addr3, ieee->dev->dev_addr);
 ether_addr_copy(auth->header.addr2, ieee->dev->dev_addr);
 ether_addr_copy(auth->header.addr1, dest);
 auth->header.frame_ctl = cpu_to_le16(RTLLIB_STYPE_AUTH);
 return skb;


}
