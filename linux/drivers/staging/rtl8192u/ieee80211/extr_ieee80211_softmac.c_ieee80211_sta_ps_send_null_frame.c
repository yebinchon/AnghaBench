
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ieee80211_device {int dummy; } ;


 struct sk_buff* ieee80211_null_func (struct ieee80211_device*,short) ;
 int softmac_ps_mgmt_xmit (struct sk_buff*,struct ieee80211_device*) ;

__attribute__((used)) static void ieee80211_sta_ps_send_null_frame(struct ieee80211_device *ieee,
          short pwr)
{
 struct sk_buff *buf = ieee80211_null_func(ieee, pwr);

 if (buf)
  softmac_ps_mgmt_xmit(buf, ieee);
}
