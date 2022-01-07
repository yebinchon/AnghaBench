
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int rx_auth_rs_err; int rx_auth_rs_ok; } ;
struct TYPE_5__ {scalar_t__ mode; } ;
struct ieee80211_device {int bHalfWirelessN24GMode; TYPE_3__ softmac_stats; int dev; TYPE_2__ current_network; int (* SetWirelessMode ) (int ,scalar_t__) ;int (* GetNmodeSupportBySecCfg ) (int ) ;TYPE_1__* pHTInfo; int state; scalar_t__ open_wep; } ;
struct TYPE_4__ {int IOTAction; } ;


 int HT_IOT_ACT_PURE_N_MODE ;
 int IEEE80211_ASSOCIATING_AUTHENTICATED ;
 int IEEE80211_DEBUG_MGMT (char*,int ) ;
 scalar_t__ IEEE_G ;
 scalar_t__ IEEE_N_24G ;
 scalar_t__ IsHTHalfNmodeAPs (struct ieee80211_device*) ;
 int auth_parse (struct sk_buff*,int **,int*) ;
 int ieee80211_associate_abort (struct ieee80211_device*) ;
 int ieee80211_associate_step2 (struct ieee80211_device*) ;
 int ieee80211_auth_challenge (struct ieee80211_device*,int *,int) ;
 int netdev_dbg (int ,char*,...) ;
 int stub1 (int ) ;
 int stub2 (int ,scalar_t__) ;
 int stub3 (int ,scalar_t__) ;

__attribute__((used)) static void ieee80211_check_auth_response(struct ieee80211_device *ieee,
       struct sk_buff *skb)
{

 bool bSupportNmode = 1, bHalfSupportNmode = 0;
 u16 errcode;
 u8 *challenge;
 int chlen = 0;
 u32 iotAction;

 errcode = auth_parse(skb, &challenge, &chlen);
 if (!errcode) {
  if (ieee->open_wep || !challenge) {
   ieee->state = IEEE80211_ASSOCIATING_AUTHENTICATED;
   ieee->softmac_stats.rx_auth_rs_ok++;
   iotAction = ieee->pHTInfo->IOTAction;
   if (!(iotAction & HT_IOT_ACT_PURE_N_MODE)) {
    if (!ieee->GetNmodeSupportBySecCfg(ieee->dev)) {

     if (IsHTHalfNmodeAPs(ieee)) {
      bSupportNmode = 1;
      bHalfSupportNmode = 1;
     } else {
      bSupportNmode = 0;
      bHalfSupportNmode = 0;
     }
     netdev_dbg(ieee->dev, "SEC(%d, %d)\n",
       bSupportNmode,
       bHalfSupportNmode);
    }
   }

   if (bSupportNmode) {

    ieee->SetWirelessMode(ieee->dev,
      ieee->current_network.mode);
   } else {

    ieee->SetWirelessMode(ieee->dev, IEEE_G);
   }

   if (ieee->current_network.mode == IEEE_N_24G &&
     bHalfSupportNmode) {
    netdev_dbg(ieee->dev, "enter half N mode\n");
    ieee->bHalfWirelessN24GMode = 1;
   } else {
    ieee->bHalfWirelessN24GMode = 0;
   }
   ieee80211_associate_step2(ieee);
  } else {
   ieee80211_auth_challenge(ieee, challenge, chlen);
  }
 } else {
  ieee->softmac_stats.rx_auth_rs_err++;
  IEEE80211_DEBUG_MGMT("Auth response status code 0x%x", errcode);
  ieee80211_associate_abort(ieee);
 }
}
