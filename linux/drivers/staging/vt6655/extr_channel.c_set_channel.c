
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {scalar_t__ byBBVGACurrent; scalar_t__* abyBBVGA; scalar_t__ byRFType; scalar_t__ byLocalID; scalar_t__ byBBType; int byCurrentCh; int lock; scalar_t__ PortOffset; int byCurPwr; scalar_t__ bEnablePSMode; scalar_t__ bUpdateBBVGA; } ;
struct ieee80211_channel {int hw_value; } ;


 scalar_t__ BB_TYPE_11B ;
 int BBvSetVGAGainOffset (struct vnt_private*,scalar_t__) ;
 int BBvSoftwareReset (struct vnt_private*) ;
 int MACCR_CLRNAV ;
 int MAC_REG_MACCR ;
 scalar_t__ MAC_REG_PWRCCK ;
 scalar_t__ MAC_REG_PWROFDM ;
 int MACvRegBitsOn (scalar_t__,int ,int ) ;
 int MACvSelectPage0 (scalar_t__) ;
 int MACvSelectPage1 (scalar_t__) ;
 int RATE_1M ;
 int RATE_6M ;
 scalar_t__ REV_ID_VT3253_B1 ;
 scalar_t__ RF_AIROHA7230 ;
 int RFbAL7230SelectChannelPostProcess (struct vnt_private*,int ,int ) ;
 int RFbSelectChannel (struct vnt_private*,scalar_t__,int ) ;
 int RFbSetPower (struct vnt_private*,int ,int ) ;
 int RFvWriteWakeProgSyn (struct vnt_private*,scalar_t__,int ) ;
 int VNSvOutPortB (scalar_t__,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool set_channel(struct vnt_private *priv, struct ieee80211_channel *ch)
{
 bool ret = 1;

 if (priv->byCurrentCh == ch->hw_value)
  return ret;


 if (priv->bUpdateBBVGA &&
     priv->byBBVGACurrent != priv->abyBBVGA[0]) {
  priv->byBBVGACurrent = priv->abyBBVGA[0];

  BBvSetVGAGainOffset(priv, priv->byBBVGACurrent);
 }


 MACvRegBitsOn(priv->PortOffset, MAC_REG_MACCR, MACCR_CLRNAV);





 if (priv->byRFType == RF_AIROHA7230)
  RFbAL7230SelectChannelPostProcess(priv, priv->byCurrentCh,
        ch->hw_value);

 priv->byCurrentCh = ch->hw_value;
 ret &= RFbSelectChannel(priv, priv->byRFType,
    ch->hw_value);


 if (priv->bEnablePSMode)
  RFvWriteWakeProgSyn(priv, priv->byRFType, ch->hw_value);

 BBvSoftwareReset(priv);

 if (priv->byLocalID > REV_ID_VT3253_B1) {
  unsigned long flags;

  spin_lock_irqsave(&priv->lock, flags);


  MACvSelectPage1(priv->PortOffset);
  RFbSetPower(priv, RATE_1M, priv->byCurrentCh);
  VNSvOutPortB(priv->PortOffset + MAC_REG_PWRCCK,
        priv->byCurPwr);
  RFbSetPower(priv, RATE_6M, priv->byCurrentCh);
  VNSvOutPortB(priv->PortOffset + MAC_REG_PWROFDM,
        priv->byCurPwr);
  MACvSelectPage0(priv->PortOffset);

  spin_unlock_irqrestore(&priv->lock, flags);
 }

 if (priv->byBBType == BB_TYPE_11B)
  RFbSetPower(priv, RATE_1M, priv->byCurrentCh);
 else
  RFbSetPower(priv, RATE_6M, priv->byCurrentCh);

 return ret;
}
