
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct vnt_private {int byPreambleType; int bShortSlotTime; scalar_t__ op_mode; scalar_t__ PortOffset; TYPE_3__* pcid; int wCurrentRate; int * abyBBVGA; int byBBType; int basic_rates; int lock; int current_aid; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;
struct TYPE_6__ {TYPE_1__* chan; } ;
struct ieee80211_bss_conf {int beacon_int; int sync_tsf; TYPE_4__* beacon_rate; scalar_t__ assoc; int enable_beacon; TYPE_2__ chandef; scalar_t__ use_short_slot; scalar_t__ use_cts_prot; scalar_t__ use_short_preamble; int basic_rates; scalar_t__ bssid; int aid; } ;
struct TYPE_8__ {int hw_value; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_5__ {int hw_value; } ;


 int BBvSetVGAGainOffset (struct vnt_private*,int ) ;
 int BSS_CHANGED_ASSOC ;
 int BSS_CHANGED_BASIC_RATES ;
 int BSS_CHANGED_BEACON_ENABLED ;
 int BSS_CHANGED_BEACON_INFO ;
 int BSS_CHANGED_BSSID ;
 int BSS_CHANGED_ERP_CTS_PROT ;
 int BSS_CHANGED_ERP_PREAMBLE ;
 int BSS_CHANGED_ERP_SLOT ;
 int BSS_CHANGED_TXPOWER ;
 int CARDbSetBeaconPeriod (struct vnt_private*,int ) ;
 int CARDbSetPhyParameter (struct vnt_private*,int ) ;
 int CARDbUpdateTSF (struct vnt_private*,int ,int ) ;
 int CARDvSetFirstNextTBTT (struct vnt_private*,int ) ;
 int CARDvUpdateBasicTopRate (struct vnt_private*) ;
 int MAC_REG_TCR ;
 scalar_t__ MAC_REG_TFTCTL ;
 int MACvDisableBarkerPreambleMd (scalar_t__) ;
 int MACvDisableProtectMD (scalar_t__) ;
 int MACvEnableBarkerPreambleMd (scalar_t__) ;
 int MACvEnableProtectMD (scalar_t__) ;
 int MACvRegBitsOff (scalar_t__,int ,int ) ;
 int MACvRegBitsOn (scalar_t__,int ,int ) ;
 int MACvWriteBSSIDAddress (scalar_t__,int *) ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int RFbSetPower (struct vnt_private*,int ,int ) ;
 int TCR_AUTOBCNTX ;
 int TFTCTL_TSFCNTREN ;
 int TFTCTL_TSFCNTRST ;
 int VNSvOutPortB (scalar_t__,int ) ;
 int dev_dbg (int *,char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vnt_beacon_enable (struct vnt_private*,struct ieee80211_vif*,struct ieee80211_bss_conf*) ;

__attribute__((used)) static void vnt_bss_info_changed(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif,
     struct ieee80211_bss_conf *conf, u32 changed)
{
 struct vnt_private *priv = hw->priv;

 priv->current_aid = conf->aid;

 if (changed & BSS_CHANGED_BSSID && conf->bssid) {
  unsigned long flags;

  spin_lock_irqsave(&priv->lock, flags);

  MACvWriteBSSIDAddress(priv->PortOffset, (u8 *)conf->bssid);

  spin_unlock_irqrestore(&priv->lock, flags);
 }

 if (changed & BSS_CHANGED_BASIC_RATES) {
  priv->basic_rates = conf->basic_rates;

  CARDvUpdateBasicTopRate(priv);

  dev_dbg(&priv->pcid->dev,
   "basic rates %x\n", conf->basic_rates);
 }

 if (changed & BSS_CHANGED_ERP_PREAMBLE) {
  if (conf->use_short_preamble) {
   MACvEnableBarkerPreambleMd(priv->PortOffset);
   priv->byPreambleType = 1;
  } else {
   MACvDisableBarkerPreambleMd(priv->PortOffset);
   priv->byPreambleType = 0;
  }
 }

 if (changed & BSS_CHANGED_ERP_CTS_PROT) {
  if (conf->use_cts_prot)
   MACvEnableProtectMD(priv->PortOffset);
  else
   MACvDisableProtectMD(priv->PortOffset);
 }

 if (changed & BSS_CHANGED_ERP_SLOT) {
  if (conf->use_short_slot)
   priv->bShortSlotTime = 1;
  else
   priv->bShortSlotTime = 0;

  CARDbSetPhyParameter(priv, priv->byBBType);
  BBvSetVGAGainOffset(priv, priv->abyBBVGA[0]);
 }

 if (changed & BSS_CHANGED_TXPOWER)
  RFbSetPower(priv, priv->wCurrentRate,
       conf->chandef.chan->hw_value);

 if (changed & BSS_CHANGED_BEACON_ENABLED) {
  dev_dbg(&priv->pcid->dev,
   "Beacon enable %d\n", conf->enable_beacon);

  if (conf->enable_beacon) {
   vnt_beacon_enable(priv, vif, conf);

   MACvRegBitsOn(priv->PortOffset, MAC_REG_TCR,
          TCR_AUTOBCNTX);
  } else {
   MACvRegBitsOff(priv->PortOffset, MAC_REG_TCR,
           TCR_AUTOBCNTX);
  }
 }

 if (changed & (BSS_CHANGED_ASSOC | BSS_CHANGED_BEACON_INFO) &&
     priv->op_mode != NL80211_IFTYPE_AP) {
  if (conf->assoc && conf->beacon_rate) {
   CARDbUpdateTSF(priv, conf->beacon_rate->hw_value,
           conf->sync_tsf);

   CARDbSetBeaconPeriod(priv, conf->beacon_int);

   CARDvSetFirstNextTBTT(priv, conf->beacon_int);
  } else {
   VNSvOutPortB(priv->PortOffset + MAC_REG_TFTCTL,
         TFTCTL_TSFCNTRST);
   VNSvOutPortB(priv->PortOffset + MAC_REG_TFTCTL,
         TFTCTL_TSFCNTREN);
  }
 }
}
