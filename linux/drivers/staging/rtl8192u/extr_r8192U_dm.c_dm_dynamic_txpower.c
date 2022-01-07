
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct r8192_priv {int bDynamicTxHighPower; int bDynamicTxLowPower; unsigned int undecorated_smoothed_pwdb; int bLastDTPFlag_High; int bLastDTPFlag_Low; TYPE_2__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int CurrentChannel; } ;
struct TYPE_4__ {unsigned int channel; scalar_t__ atheros_cap_exist; } ;
struct TYPE_5__ {int bdynamic_txpower_enable; scalar_t__ mode; scalar_t__ state; TYPE_1__ current_network; } ;


 int Adapter ;
 int COMP_TXAGC ;
 scalar_t__ IEEE80211_LINKED ;
 scalar_t__ IEEE_G ;
 int RT_TRACE (int ,char*,unsigned int) ;
 int SetTxPowerLevel8190 (int ,int ) ;
 unsigned int TX_POWER_ATHEROAP_THRESH_HIGH ;
 unsigned int TX_POWER_ATHEROAP_THRESH_LOW ;
 unsigned int TX_POWER_NEAR_FIELD_THRESH_HIGH ;
 unsigned int TX_POWER_NEAR_FIELD_THRESH_LOW ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 TYPE_3__* pHalData ;
 int rtl8192_phy_setTxPower (struct net_device*,unsigned int) ;

__attribute__((used)) static void dm_dynamic_txpower(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 unsigned int txhipower_threshold = 0;
 unsigned int txlowpower_threshold = 0;

 if (priv->ieee80211->bdynamic_txpower_enable != 1) {
  priv->bDynamicTxHighPower = 0;
  priv->bDynamicTxLowPower = 0;
  return;
 }

 if ((priv->ieee80211->current_network.atheros_cap_exist) && (priv->ieee80211->mode == IEEE_G)) {
  txhipower_threshold = TX_POWER_ATHEROAP_THRESH_HIGH;
  txlowpower_threshold = TX_POWER_ATHEROAP_THRESH_LOW;
 } else {
  txhipower_threshold = TX_POWER_NEAR_FIELD_THRESH_HIGH;
  txlowpower_threshold = TX_POWER_NEAR_FIELD_THRESH_LOW;
 }


 RT_TRACE(COMP_TXAGC, "priv->undecorated_smoothed_pwdb = %ld\n", priv->undecorated_smoothed_pwdb);

 if (priv->ieee80211->state == IEEE80211_LINKED) {
  if (priv->undecorated_smoothed_pwdb >= txhipower_threshold) {
   priv->bDynamicTxHighPower = 1;
   priv->bDynamicTxLowPower = 0;
  } else {

   if (priv->undecorated_smoothed_pwdb < txlowpower_threshold && priv->bDynamicTxHighPower)
    priv->bDynamicTxHighPower = 0;


   if (priv->undecorated_smoothed_pwdb < 35)
    priv->bDynamicTxLowPower = 1;
   else if (priv->undecorated_smoothed_pwdb >= 40)
    priv->bDynamicTxLowPower = 0;
  }
 } else {

  priv->bDynamicTxHighPower = 0;
  priv->bDynamicTxLowPower = 0;
 }

 if ((priv->bDynamicTxHighPower != priv->bLastDTPFlag_High) ||
  (priv->bDynamicTxLowPower != priv->bLastDTPFlag_Low)) {
  RT_TRACE(COMP_TXAGC, "SetTxPowerLevel8190()  channel = %d\n", priv->ieee80211->current_network.channel);





  rtl8192_phy_setTxPower(dev, priv->ieee80211->current_network.channel);

 }
 priv->bLastDTPFlag_High = priv->bDynamicTxHighPower;
 priv->bLastDTPFlag_Low = priv->bDynamicTxLowPower;

}
