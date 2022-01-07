
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct rtllib_network {int dummy; } ;
struct rtllib_device {struct rtllib_network current_network; } ;


 struct sk_buff* rtllib_disassociate_skb (struct rtllib_network*,struct rtllib_device*,int ) ;
 struct sk_buff* rtllib_disauth_skb (struct rtllib_network*,struct rtllib_device*,int ) ;
 int softmac_mgmt_xmit (struct sk_buff*,struct rtllib_device*) ;

void SendDisassociation(struct rtllib_device *ieee, bool deauth, u16 asRsn)
{
 struct rtllib_network *beacon = &ieee->current_network;
 struct sk_buff *skb;

 if (deauth)
  skb = rtllib_disauth_skb(beacon, ieee, asRsn);
 else
  skb = rtllib_disassociate_skb(beacon, ieee, asRsn);

 if (skb)
  softmac_mgmt_xmit(skb, ieee);
}
