
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct vnt_private {long* ldBmThreshold; int uBBVGADiffCount; int byBBVGANew; int byBBVGACurrent; TYPE_5__* pcid; int * abyBBVGA; scalar_t__ uCurrRSSI; TYPE_4__* vif; TYPE_2__* hw; int bUpdateBBVGA; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_8__ {scalar_t__ assoc; } ;
struct TYPE_9__ {TYPE_3__ bss_conf; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_7__ {TYPE_1__ conf; } ;


 int BB_VGA_CHANGE_THRESHOLD ;
 int BB_VGA_LEVEL ;
 int BBvSetVGAGainOffset (struct vnt_private*,int ) ;
 int IEEE80211_CONF_OFFCHANNEL ;
 int RFvRSSITodBm (struct vnt_private*,int ,long*) ;
 int dev_dbg (int *,char*,int,int ,int ,int) ;

__attribute__((used)) static void vnt_check_bb_vga(struct vnt_private *priv)
{
 long dbm;
 int i;

 if (!priv->bUpdateBBVGA)
  return;

 if (priv->hw->conf.flags & IEEE80211_CONF_OFFCHANNEL)
  return;

 if (!(priv->vif->bss_conf.assoc && priv->uCurrRSSI))
  return;

 RFvRSSITodBm(priv, (u8)priv->uCurrRSSI, &dbm);

 for (i = 0; i < BB_VGA_LEVEL; i++) {
  if (dbm < priv->ldBmThreshold[i]) {
   priv->byBBVGANew = priv->abyBBVGA[i];
   break;
  }
 }

 if (priv->byBBVGANew == priv->byBBVGACurrent) {
  priv->uBBVGADiffCount = 1;
  return;
 }

 priv->uBBVGADiffCount++;

 if (priv->uBBVGADiffCount == 1) {

  BBvSetVGAGainOffset(priv, priv->byBBVGANew);

  dev_dbg(&priv->pcid->dev,
   "First RSSI[%d] NewGain[%d] OldGain[%d] Count[%d]\n",
   (int)dbm, priv->byBBVGANew,
   priv->byBBVGACurrent,
   (int)priv->uBBVGADiffCount);
 }

 if (priv->uBBVGADiffCount >= BB_VGA_CHANGE_THRESHOLD) {
  dev_dbg(&priv->pcid->dev,
   "RSSI[%d] NewGain[%d] OldGain[%d] Count[%d]\n",
   (int)dbm, priv->byBBVGANew,
   priv->byBBVGACurrent,
   (int)priv->uBBVGADiffCount);

  BBvSetVGAGainOffset(priv, priv->byBBVGANew);
 }
}
