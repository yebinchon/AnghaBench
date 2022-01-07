
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int bAES; int bProtectMode; int bNonERPPresent; int bBarkerPreambleMd; scalar_t__ byLocalID; int byMinChannel; int bTxRxAntInv; int byAntennaCount; int dwTxAntennaSel; int dwRxAntennaSel; int byCurPwr; unsigned char* abyCCKDefaultPwr; unsigned char* abyOFDMDefaultPwr; int bRadioOff; int byRadioCtl; int bHWRadioOff; int byGPIO; scalar_t__ PortOffset; int abyCurrentNetAddr; scalar_t__ bRadioControlOff; void* wCurrentRate; void* byTxAntennaMode; void* byRxAntennaMode; int * abyBBVGA; int byBBVGACurrent; int byBBVGANew; scalar_t__ bUpdateBBVGA; int byLongRetryLimit; int byShortRetryLimit; void** abyOFDMPwrTbl; void** abyCCKPwrTbl; void* byOFDMPwrG; void* byCCKPwr; int byZoneType; int * abyEEPROM; int bZoneRegExist; int byOriginalZonetype; int byMaxChannel; int lock; void* byTopCCKBasicRate; int byTopOFDMBasicRate; } ;


 void* ANT_A ;
 void* ANT_B ;
 int BBbVT3253Init (struct vnt_private*) ;
 int BBvSetRxAntennaMode (struct vnt_private*,void*) ;
 int BBvSetTxAntennaMode (struct vnt_private*,void*) ;
 int BBvSetVGAGainOffset (struct vnt_private*,int ) ;
 int BBvSoftwareReset (struct vnt_private*) ;
 int CARDbRadioPowerOff (struct vnt_private*) ;
 int CARDvSafeResetRx (struct vnt_private*) ;
 int CARDvSafeResetTx (struct vnt_private*) ;
 int CB_MAX_CHANNEL ;
 unsigned int CB_MAX_CHANNEL_24G ;
 unsigned int CB_MAX_CHANNEL_5G ;
 int CFG_NOTXTIMEOUT ;
 int CFG_TKIPOPT ;
 unsigned char EEP_ANTENNA_AUX ;
 unsigned char EEP_ANTENNA_MAIN ;
 unsigned char EEP_ANTINV ;
 unsigned char EEP_OFS_ANTENNA ;
 scalar_t__ EEP_OFS_CCK_PWR_TBL ;
 scalar_t__ EEP_OFS_OFDMA_PWR_TBL ;
 scalar_t__ EEP_OFS_OFDMA_PWR_dBm ;
 scalar_t__ EEP_OFS_OFDM_PWR_TBL ;
 unsigned char EEP_OFS_PWR_CCK ;
 unsigned char EEP_OFS_PWR_OFDMG ;
 unsigned char EEP_OFS_RADIOCTL ;
 size_t EEP_OFS_ZONETYPE ;
 int EEP_RADIOCTL_ENABLE ;
 int EEP_RADIOCTL_INV ;
 int GPIO0_DATA ;
 int MAC_REG_CFG ;
 scalar_t__ MAC_REG_LOCALID ;
 scalar_t__ MAC_REG_MSRCTL ;
 int MAC_REG_RCR ;
 scalar_t__ MAC_REG_TFTCTL ;
 int MACbShutdown (struct vnt_private*) ;
 int MACbSoftwareReset (struct vnt_private*) ;
 int MACvGPIOIn (scalar_t__,int*) ;
 int MACvInitialize (struct vnt_private*) ;
 int MACvReceive0 (scalar_t__) ;
 int MACvReceive1 (scalar_t__) ;
 int MACvRegBitsOn (scalar_t__,int ,int ) ;
 int MACvSelectPage0 (scalar_t__) ;
 int MACvSelectPage1 (scalar_t__) ;
 int MACvSetLongRetryLimit (struct vnt_private*,int ) ;
 int MACvSetShortRetryLimit (struct vnt_private*,int ) ;
 int MACvStart (scalar_t__) ;
 int MACvWordRegBitsOn (scalar_t__,int ,int) ;
 int MSRCTL1_CSAPAREN ;
 int MSRCTL1_TXPWR ;
 void* RATE_1M ;
 int RATE_24M ;
 void* RATE_54M ;
 int RCR_WPAERR ;
 scalar_t__ REV_ID_VT3253_A1 ;
 scalar_t__ REV_ID_VT3253_B1 ;
 int RFbInit (struct vnt_private*) ;
 void* SROMbyReadEmbedded (scalar_t__,unsigned char) ;
 int SROMvReadAllContents (scalar_t__,int *) ;
 int SROMvReadEtherAddress (scalar_t__,int ) ;
 int TFTCTL_TSFCNTREN ;
 int TFTCTL_TSFCNTRST ;
 int VNSvInPortB (scalar_t__,scalar_t__*) ;
 int VNSvOutPortB (scalar_t__,int) ;
 int pr_debug (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void device_init_registers(struct vnt_private *priv)
{
 unsigned long flags;
 unsigned int ii;
 unsigned char byValue;
 unsigned char byCCKPwrdBm = 0;
 unsigned char byOFDMPwrdBm = 0;

 MACbShutdown(priv);
 BBvSoftwareReset(priv);


 MACbSoftwareReset(priv);

 priv->bAES = 0;


 priv->bProtectMode = 0;

 priv->bNonERPPresent = 0;
 priv->bBarkerPreambleMd = 0;
 priv->wCurrentRate = RATE_1M;
 priv->byTopOFDMBasicRate = RATE_24M;
 priv->byTopCCKBasicRate = RATE_1M;


 MACvInitialize(priv);


 VNSvInPortB(priv->PortOffset + MAC_REG_LOCALID, &priv->byLocalID);

 spin_lock_irqsave(&priv->lock, flags);

 SROMvReadAllContents(priv->PortOffset, priv->abyEEPROM);

 spin_unlock_irqrestore(&priv->lock, flags);


 priv->byMinChannel = 1;
 priv->byMaxChannel = CB_MAX_CHANNEL;


 byValue = SROMbyReadEmbedded(priv->PortOffset, EEP_OFS_ANTENNA);
 if (byValue & EEP_ANTINV)
  priv->bTxRxAntInv = 1;
 else
  priv->bTxRxAntInv = 0;

 byValue &= (EEP_ANTENNA_AUX | EEP_ANTENNA_MAIN);

 if (byValue == 0)
  byValue = (EEP_ANTENNA_AUX | EEP_ANTENNA_MAIN);

 if (byValue == (EEP_ANTENNA_AUX | EEP_ANTENNA_MAIN)) {
  priv->byAntennaCount = 2;
  priv->byTxAntennaMode = ANT_B;
  priv->dwTxAntennaSel = 1;
  priv->dwRxAntennaSel = 1;

  if (priv->bTxRxAntInv)
   priv->byRxAntennaMode = ANT_A;
  else
   priv->byRxAntennaMode = ANT_B;
 } else {
  priv->byAntennaCount = 1;
  priv->dwTxAntennaSel = 0;
  priv->dwRxAntennaSel = 0;

  if (byValue & EEP_ANTENNA_AUX) {
   priv->byTxAntennaMode = ANT_A;

   if (priv->bTxRxAntInv)
    priv->byRxAntennaMode = ANT_B;
   else
    priv->byRxAntennaMode = ANT_A;
  } else {
   priv->byTxAntennaMode = ANT_B;

   if (priv->bTxRxAntInv)
    priv->byRxAntennaMode = ANT_A;
   else
    priv->byRxAntennaMode = ANT_B;
  }
 }


 BBvSetTxAntennaMode(priv, priv->byTxAntennaMode);
 BBvSetRxAntennaMode(priv, priv->byRxAntennaMode);


 priv->byOriginalZonetype = priv->abyEEPROM[EEP_OFS_ZONETYPE];

 if (!priv->bZoneRegExist)
  priv->byZoneType = priv->abyEEPROM[EEP_OFS_ZONETYPE];

 pr_debug("priv->byZoneType = %x\n", priv->byZoneType);


 RFbInit(priv);


 priv->byCurPwr = 0xFF;
 priv->byCCKPwr = SROMbyReadEmbedded(priv->PortOffset, EEP_OFS_PWR_CCK);
 priv->byOFDMPwrG = SROMbyReadEmbedded(priv->PortOffset, EEP_OFS_PWR_OFDMG);


 for (ii = 0; ii < CB_MAX_CHANNEL_24G; ii++) {
  priv->abyCCKPwrTbl[ii + 1] =
   SROMbyReadEmbedded(priv->PortOffset,
        (unsigned char)(ii + EEP_OFS_CCK_PWR_TBL));
  if (priv->abyCCKPwrTbl[ii + 1] == 0)
   priv->abyCCKPwrTbl[ii + 1] = priv->byCCKPwr;

  priv->abyOFDMPwrTbl[ii + 1] =
   SROMbyReadEmbedded(priv->PortOffset,
        (unsigned char)(ii + EEP_OFS_OFDM_PWR_TBL));
  if (priv->abyOFDMPwrTbl[ii + 1] == 0)
   priv->abyOFDMPwrTbl[ii + 1] = priv->byOFDMPwrG;

  priv->abyCCKDefaultPwr[ii + 1] = byCCKPwrdBm;
  priv->abyOFDMDefaultPwr[ii + 1] = byOFDMPwrdBm;
 }


 for (ii = 11; ii < 14; ii++) {
  priv->abyCCKPwrTbl[ii] = priv->abyCCKPwrTbl[10];
  priv->abyOFDMPwrTbl[ii] = priv->abyOFDMPwrTbl[10];
 }


 for (ii = 0; ii < CB_MAX_CHANNEL_5G; ii++) {
  priv->abyOFDMPwrTbl[ii + CB_MAX_CHANNEL_24G + 1] =
   SROMbyReadEmbedded(priv->PortOffset,
        (unsigned char)(ii + EEP_OFS_OFDMA_PWR_TBL));

  priv->abyOFDMDefaultPwr[ii + CB_MAX_CHANNEL_24G + 1] =
   SROMbyReadEmbedded(priv->PortOffset,
        (unsigned char)(ii + EEP_OFS_OFDMA_PWR_dBm));
 }

 if (priv->byLocalID > REV_ID_VT3253_B1) {
  MACvSelectPage1(priv->PortOffset);

  VNSvOutPortB(priv->PortOffset + MAC_REG_MSRCTL + 1,
        (MSRCTL1_TXPWR | MSRCTL1_CSAPAREN));

  MACvSelectPage0(priv->PortOffset);
 }


 MACvWordRegBitsOn(priv->PortOffset,
     MAC_REG_CFG, (CFG_TKIPOPT | CFG_NOTXTIMEOUT));


 MACvSetShortRetryLimit(priv, priv->byShortRetryLimit);
 MACvSetLongRetryLimit(priv, priv->byLongRetryLimit);


 VNSvOutPortB(priv->PortOffset + MAC_REG_TFTCTL, TFTCTL_TSFCNTRST);

 VNSvOutPortB(priv->PortOffset + MAC_REG_TFTCTL, TFTCTL_TSFCNTREN);


 BBbVT3253Init(priv);

 if (priv->bUpdateBBVGA) {
  priv->byBBVGACurrent = priv->abyBBVGA[0];
  priv->byBBVGANew = priv->byBBVGACurrent;
  BBvSetVGAGainOffset(priv, priv->abyBBVGA[0]);
 }

 BBvSetRxAntennaMode(priv, priv->byRxAntennaMode);
 BBvSetTxAntennaMode(priv, priv->byTxAntennaMode);



 priv->wCurrentRate = RATE_54M;

 priv->bRadioOff = 0;

 priv->byRadioCtl = SROMbyReadEmbedded(priv->PortOffset,
       EEP_OFS_RADIOCTL);
 priv->bHWRadioOff = 0;

 if (priv->byRadioCtl & EEP_RADIOCTL_ENABLE) {

  MACvGPIOIn(priv->PortOffset, &priv->byGPIO);

  if (((priv->byGPIO & GPIO0_DATA) &&
       !(priv->byRadioCtl & EEP_RADIOCTL_INV)) ||
       (!(priv->byGPIO & GPIO0_DATA) &&
       (priv->byRadioCtl & EEP_RADIOCTL_INV)))
   priv->bHWRadioOff = 1;
 }

 if (priv->bHWRadioOff || priv->bRadioControlOff)
  CARDbRadioPowerOff(priv);


 SROMvReadEtherAddress(priv->PortOffset, priv->abyCurrentNetAddr);
 pr_debug("Network address = %pM\n", priv->abyCurrentNetAddr);


 CARDvSafeResetRx(priv);

 CARDvSafeResetTx(priv);

 if (priv->byLocalID <= REV_ID_VT3253_A1)
  MACvRegBitsOn(priv->PortOffset, MAC_REG_RCR, RCR_WPAERR);


 MACvReceive0(priv->PortOffset);
 MACvReceive1(priv->PortOffset);


 MACvStart(priv->PortOffset);
}
