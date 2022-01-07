
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct rtllib_device {int dummy; } ;


 struct sk_buff* rtllib_probe_resp (struct rtllib_device*,int *) ;
 int softmac_mgmt_xmit (struct sk_buff*,struct rtllib_device*) ;

__attribute__((used)) static void rtllib_resp_to_probe(struct rtllib_device *ieee, u8 *dest)
{
 struct sk_buff *buf = rtllib_probe_resp(ieee, dest);

 if (buf)
  softmac_mgmt_xmit(buf, ieee);
}
