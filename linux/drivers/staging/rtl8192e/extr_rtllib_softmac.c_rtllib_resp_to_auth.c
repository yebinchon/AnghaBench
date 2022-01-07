
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct rtllib_device {int dummy; } ;


 struct sk_buff* rtllib_auth_resp (struct rtllib_device*,int,int *) ;
 int softmac_mgmt_xmit (struct sk_buff*,struct rtllib_device*) ;

__attribute__((used)) static void rtllib_resp_to_auth(struct rtllib_device *ieee, int s, u8 *dest)
{
 struct sk_buff *buf = rtllib_auth_resp(ieee, s, dest);

 if (buf)
  softmac_mgmt_xmit(buf, ieee);
}
