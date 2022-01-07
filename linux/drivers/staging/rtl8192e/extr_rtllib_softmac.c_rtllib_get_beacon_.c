
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int frame_ctl; } ;
struct rtllib_probe_response {TYPE_1__ header; } ;
struct rtllib_device {int dummy; } ;


 int RTLLIB_STYPE_BEACON ;
 int cpu_to_le16 (int ) ;
 struct sk_buff* rtllib_probe_resp (struct rtllib_device*,int const*) ;

__attribute__((used)) static struct sk_buff *rtllib_get_beacon_(struct rtllib_device *ieee)
{
 static const u8 broadcast_addr[] = {
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff
 };
 struct sk_buff *skb;
 struct rtllib_probe_response *b;

 skb = rtllib_probe_resp(ieee, broadcast_addr);

 if (!skb)
  return ((void*)0);

 b = (struct rtllib_probe_response *) skb->data;
 b->header.frame_ctl = cpu_to_le16(RTLLIB_STYPE_BEACON);

 return skb;

}
