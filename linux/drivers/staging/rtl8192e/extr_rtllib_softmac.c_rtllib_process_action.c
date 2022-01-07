
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct rtllib_hdr_3addr {int dummy; } ;
struct rtllib_hdr {int dummy; } ;
struct rtllib_device {int dev; } ;






 int netdev_warn (int ,char*) ;
 int* rtllib_get_payload (struct rtllib_hdr*) ;
 int rtllib_rx_ADDBAReq (struct rtllib_device*,struct sk_buff*) ;
 int rtllib_rx_ADDBARsp (struct rtllib_device*,struct sk_buff*) ;
 int rtllib_rx_DELBA (struct rtllib_device*,struct sk_buff*) ;

__attribute__((used)) static void rtllib_process_action(struct rtllib_device *ieee,
      struct sk_buff *skb)
{
 struct rtllib_hdr_3addr *header = (struct rtllib_hdr_3addr *) skb->data;
 u8 *act = rtllib_get_payload((struct rtllib_hdr *)header);
 u8 category = 0;

 if (act == ((void*)0)) {
  netdev_warn(ieee->dev,
       "Error getting payload of action frame\n");
  return;
 }

 category = *act;
 act++;
 switch (category) {
 case 129:
  switch (*act) {
  case 131:
   rtllib_rx_ADDBAReq(ieee, skb);
   break;
  case 130:
   rtllib_rx_ADDBARsp(ieee, skb);
   break;
  case 128:
   rtllib_rx_DELBA(ieee, skb);
   break;
  }
  break;
 default:
  break;
 }
}
