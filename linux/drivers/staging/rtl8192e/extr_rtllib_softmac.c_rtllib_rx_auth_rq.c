
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int rx_auth_rq; } ;
struct rtllib_device {int dev; TYPE_1__ softmac_stats; } ;


 int ETH_ALEN ;
 int auth_rq_parse (int ,struct sk_buff*,int *) ;
 int rtllib_resp_to_auth (struct rtllib_device*,int,int *) ;

__attribute__((used)) static inline void rtllib_rx_auth_rq(struct rtllib_device *ieee,
         struct sk_buff *skb)
{
 u8 dest[ETH_ALEN];
 int status;

 ieee->softmac_stats.rx_auth_rq++;

 status = auth_rq_parse(ieee->dev, skb, dest);
 if (status != -1)
  rtllib_resp_to_auth(ieee, status, dest);
}
