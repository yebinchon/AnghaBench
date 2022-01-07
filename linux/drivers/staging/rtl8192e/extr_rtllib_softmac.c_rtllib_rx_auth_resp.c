
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {scalar_t__ mode; } ;
struct TYPE_4__ {int rx_auth_rs_ok; int rx_auth_rs_err; } ;
struct rtllib_device {int bHalfWirelessN24GMode; int dev; TYPE_3__ current_network; int (* SetWirelessMode ) (int ,scalar_t__) ;int (* GetNmodeSupportBySecCfg ) (int ) ;TYPE_2__* pHTInfo; TYPE_1__ softmac_stats; int state; scalar_t__ open_wep; } ;
struct TYPE_5__ {int IOTAction; } ;


 int HT_IOT_ACT_PURE_N_MODE ;
 scalar_t__ IEEE_G ;
 scalar_t__ IEEE_N_24G ;
 scalar_t__ IsHTHalfNmodeAPs (struct rtllib_device*) ;
 int RTLLIB_ASSOCIATING_AUTHENTICATED ;
 scalar_t__ auth_parse (int ,struct sk_buff*,int **,int*) ;
 int netdev_info (int ,char*,...) ;
 int rtllib_associate_abort (struct rtllib_device*) ;
 int rtllib_associate_step2 (struct rtllib_device*) ;
 int rtllib_auth_challenge (struct rtllib_device*,int *,int) ;
 int stub1 (int ) ;
 int stub2 (int ,scalar_t__) ;
 int stub3 (int ,scalar_t__) ;

__attribute__((used)) static void rtllib_rx_auth_resp(struct rtllib_device *ieee, struct sk_buff *skb)
{
 u16 errcode;
 u8 *challenge;
 int chlen = 0;
 bool bSupportNmode = 1, bHalfSupportNmode = 0;

 errcode = auth_parse(ieee->dev, skb, &challenge, &chlen);

 if (errcode) {
  ieee->softmac_stats.rx_auth_rs_err++;
  netdev_info(ieee->dev,
       "Authentication response status code 0x%x",
       errcode);
  rtllib_associate_abort(ieee);
  return;
 }

 if (ieee->open_wep || !challenge) {
  ieee->state = RTLLIB_ASSOCIATING_AUTHENTICATED;
  ieee->softmac_stats.rx_auth_rs_ok++;
  if (!(ieee->pHTInfo->IOTAction & HT_IOT_ACT_PURE_N_MODE)) {
   if (!ieee->GetNmodeSupportBySecCfg(ieee->dev)) {
    if (IsHTHalfNmodeAPs(ieee)) {
     bSupportNmode = 1;
     bHalfSupportNmode = 1;
    } else {
     bSupportNmode = 0;
     bHalfSupportNmode = 0;
    }
   }
  }

  if (bSupportNmode) {
   ieee->SetWirelessMode(ieee->dev,
           ieee->current_network.mode);
  } else {

   ieee->SetWirelessMode(ieee->dev, IEEE_G);
  }

  if ((ieee->current_network.mode == IEEE_N_24G) &&
      bHalfSupportNmode) {
   netdev_info(ieee->dev, "======>enter half N mode\n");
   ieee->bHalfWirelessN24GMode = 1;
  } else {
   ieee->bHalfWirelessN24GMode = 0;
  }
  rtllib_associate_step2(ieee);
 } else {
  rtllib_auth_challenge(ieee, challenge, chlen);
 }
}
