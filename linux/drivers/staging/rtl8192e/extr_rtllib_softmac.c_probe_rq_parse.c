
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {int len; scalar_t__* data; } ;
struct rtllib_hdr_3addr {int addr2; int addr3; } ;
struct TYPE_2__ {int ssid; int bssid; } ;
struct rtllib_device {TYPE_1__ current_network; } ;


 int ether_addr_copy (scalar_t__*,int ) ;
 int ether_addr_equal (int ,int ) ;
 int is_broadcast_ether_addr (int ) ;
 int strncmp (scalar_t__*,int ,scalar_t__) ;

__attribute__((used)) static short probe_rq_parse(struct rtllib_device *ieee, struct sk_buff *skb,
       u8 *src)
{
 u8 *tag;
 u8 *skbend;
 u8 *ssid = ((void*)0);
 u8 ssidlen = 0;
 struct rtllib_hdr_3addr *header =
  (struct rtllib_hdr_3addr *) skb->data;
 bool bssid_match;

 if (skb->len < sizeof(struct rtllib_hdr_3addr))
  return -1;

 bssid_match =
   (!ether_addr_equal(header->addr3, ieee->current_network.bssid)) &&
   (!is_broadcast_ether_addr(header->addr3));
 if (bssid_match)
  return -1;

 ether_addr_copy(src, header->addr2);

 skbend = (u8 *)skb->data + skb->len;

 tag = skb->data + sizeof(struct rtllib_hdr_3addr);

 while (tag + 1 < skbend) {
  if (*tag == 0) {
   ssid = tag + 2;
   ssidlen = *(tag + 1);
   break;
  }
  tag++;
  tag = tag + *(tag);
  tag++;
 }

 if (ssidlen == 0)
  return 1;

 if (!ssid)
  return 1;

 return !strncmp(ssid, ieee->current_network.ssid, ssidlen);
}
