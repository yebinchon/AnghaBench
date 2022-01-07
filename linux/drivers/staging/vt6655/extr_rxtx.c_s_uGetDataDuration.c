
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int uSIFS; int byTopOFDMBasicRate; int byPreambleType; int byTopCCKBasicRate; } ;


 unsigned char AUTO_FB_0 ;
 unsigned int BBuGetFrameTime (int ,unsigned char,int,int ) ;




 size_t FB_RATE0 ;
 size_t FB_RATE1 ;
 unsigned short RATE_18M ;
 unsigned short RATE_54M ;
 unsigned int s_uGetTxRsvTime (struct vnt_private*,unsigned char,unsigned int,unsigned short,int) ;
 unsigned short** wFB_Opt0 ;
 unsigned short** wFB_Opt1 ;

__attribute__((used)) static
unsigned int
s_uGetDataDuration(
 struct vnt_private *pDevice,
 unsigned char byDurType,
 unsigned int cbFrameLength,
 unsigned char byPktType,
 unsigned short wRate,
 bool bNeedAck,
 unsigned int uFragIdx,
 unsigned int cbLastFragmentSize,
 unsigned int uMACfragNum,
 unsigned char byFBOption
)
{
 bool bLastFrag = 0;
 unsigned int uAckTime = 0, uNextPktTime = 0;

 if (uFragIdx == (uMACfragNum - 1))
  bLastFrag = 1;

 switch (byDurType) {
 case 128:
  if (((uMACfragNum == 1)) || bLastFrag) {
   if (bNeedAck) {
    uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
    return pDevice->uSIFS + uAckTime;
   } else {
    return 0;
   }
  } else {
   if (uFragIdx == (uMACfragNum - 2))
    uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wRate, bNeedAck);
   else
    uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);

   if (bNeedAck) {
    uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
    return pDevice->uSIFS + uAckTime + uNextPktTime;
   } else {
    return pDevice->uSIFS + uNextPktTime;
   }
  }
  break;

 case 131:
  if (((uMACfragNum == 1)) || bLastFrag) {
   if (bNeedAck) {
    uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
    return pDevice->uSIFS + uAckTime;
   } else {
    return 0;
   }
  } else {
   if (uFragIdx == (uMACfragNum - 2))
    uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wRate, bNeedAck);
   else
    uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);

   if (bNeedAck) {
    uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
    return pDevice->uSIFS + uAckTime + uNextPktTime;
   } else {
    return pDevice->uSIFS + uNextPktTime;
   }
  }
  break;

 case 130:
  if (((uMACfragNum == 1)) || bLastFrag) {
   if (bNeedAck) {
    uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
    return pDevice->uSIFS + uAckTime;
   } else {
    return 0;
   }
  } else {
   if (byFBOption == AUTO_FB_0) {
    if (wRate < RATE_18M)
     wRate = RATE_18M;
    else if (wRate > RATE_54M)
     wRate = RATE_54M;

    if (uFragIdx == (uMACfragNum - 2))
     uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
    else
     uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);

   } else {
    if (wRate < RATE_18M)
     wRate = RATE_18M;
    else if (wRate > RATE_54M)
     wRate = RATE_54M;

    if (uFragIdx == (uMACfragNum - 2))
     uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
    else
     uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
   }

   if (bNeedAck) {
    uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
    return pDevice->uSIFS + uAckTime + uNextPktTime;
   } else {
    return pDevice->uSIFS + uNextPktTime;
   }
  }
  break;

 case 129:
  if (((uMACfragNum == 1)) || bLastFrag) {
   if (bNeedAck) {
    uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
    return pDevice->uSIFS + uAckTime;
   } else {
    return 0;
   }
  } else {
   if (byFBOption == AUTO_FB_0) {
    if (wRate < RATE_18M)
     wRate = RATE_18M;
    else if (wRate > RATE_54M)
     wRate = RATE_54M;

    if (uFragIdx == (uMACfragNum - 2))
     uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
    else
     uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);

   } else {
    if (wRate < RATE_18M)
     wRate = RATE_18M;
    else if (wRate > RATE_54M)
     wRate = RATE_54M;

    if (uFragIdx == (uMACfragNum - 2))
     uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
    else
     uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
   }
   if (bNeedAck) {
    uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
    return pDevice->uSIFS + uAckTime + uNextPktTime;
   } else {
    return pDevice->uSIFS + uNextPktTime;
   }
  }
  break;

 default:
  break;
 }

 return 0;
}
