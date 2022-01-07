
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ieee80211_network {int dummy; } ;
struct TYPE_5__ {scalar_t__ expires; } ;
struct TYPE_4__ {int tx_auth_rq; } ;
struct ieee80211_device {TYPE_2__ associate_timer; int state; TYPE_1__ softmac_stats; struct ieee80211_network current_network; } ;


 int HZ ;
 int IEEE80211_ASSOCIATING_AUTHENTICATING ;
 int IEEE80211_DEBUG_MGMT (char*) ;
 int add_timer (TYPE_2__*) ;
 int ieee80211_associate_abort (struct ieee80211_device*) ;
 struct sk_buff* ieee80211_authentication_req (struct ieee80211_network*,struct ieee80211_device*,int ) ;
 scalar_t__ jiffies ;
 int softmac_mgmt_xmit (struct sk_buff*,struct ieee80211_device*) ;
 int timer_pending (TYPE_2__*) ;

__attribute__((used)) static void ieee80211_associate_step1(struct ieee80211_device *ieee)
{
 struct ieee80211_network *beacon = &ieee->current_network;
 struct sk_buff *skb;

 IEEE80211_DEBUG_MGMT("Stopping scan\n");

 ieee->softmac_stats.tx_auth_rq++;
 skb = ieee80211_authentication_req(beacon, ieee, 0);

 if (!skb) {
  ieee80211_associate_abort(ieee);
 } else {
  ieee->state = IEEE80211_ASSOCIATING_AUTHENTICATING;
  IEEE80211_DEBUG_MGMT("Sending authentication request\n");
  softmac_mgmt_xmit(skb, ieee);

  if (!timer_pending(&ieee->associate_timer)) {
   ieee->associate_timer.expires = jiffies + (HZ / 2);
   add_timer(&ieee->associate_timer);
  }

 }
}
