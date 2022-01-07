
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int rx_auth_rq; } ;
struct ieee80211_device {TYPE_1__ softmac_stats; } ;


 int ETH_ALEN ;
 int auth_rq_parse (struct sk_buff*,int *) ;
 int ieee80211_resp_to_auth (struct ieee80211_device*,int,int *) ;

__attribute__((used)) static inline void
ieee80211_rx_auth_rq(struct ieee80211_device *ieee, struct sk_buff *skb)
{
 u8 dest[ETH_ALEN];
 int status;

 ieee->softmac_stats.rx_auth_rq++;

 status = auth_rq_parse(skb, dest);
 if (status != -1)
  ieee80211_resp_to_auth(ieee, status, dest);

}
