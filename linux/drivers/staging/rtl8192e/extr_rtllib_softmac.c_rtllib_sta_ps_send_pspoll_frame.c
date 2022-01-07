
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rtllib_device {int dummy; } ;


 struct sk_buff* rtllib_pspoll_func (struct rtllib_device*) ;
 int softmac_ps_mgmt_xmit (struct sk_buff*,struct rtllib_device*) ;

void rtllib_sta_ps_send_pspoll_frame(struct rtllib_device *ieee)
{
 struct sk_buff *buf = rtllib_pspoll_func(ieee);

 if (buf)
  softmac_ps_mgmt_xmit(buf, ieee);
}
