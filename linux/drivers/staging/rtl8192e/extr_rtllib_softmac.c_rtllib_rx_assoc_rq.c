
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int rx_ass_rq; } ;
struct rtllib_device {int dev; TYPE_1__ softmac_stats; } ;


 int ETH_ALEN ;
 int assoc_rq_parse (int ,struct sk_buff*,int *) ;
 int netdev_info (int ,char*,int *) ;
 int rtllib_resp_to_assoc_rq (struct rtllib_device*,int *) ;

__attribute__((used)) static inline void rtllib_rx_assoc_rq(struct rtllib_device *ieee,
          struct sk_buff *skb)
{
 u8 dest[ETH_ALEN];


 ieee->softmac_stats.rx_ass_rq++;
 if (assoc_rq_parse(ieee->dev, skb, dest) != -1)
  rtllib_resp_to_assoc_rq(ieee, dest);

 netdev_info(ieee->dev, "New client associated: %pM\n", dest);
}
