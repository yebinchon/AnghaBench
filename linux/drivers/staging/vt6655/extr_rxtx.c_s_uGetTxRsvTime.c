
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {unsigned int uSIFS; scalar_t__ byTopOFDMBasicRate; int byPreambleType; scalar_t__ byTopCCKBasicRate; } ;


 unsigned int BBuGetFrameTime (int ,unsigned char,int,unsigned short) ;
 unsigned char PK_TYPE_11B ;

__attribute__((used)) static
unsigned int
s_uGetTxRsvTime(
 struct vnt_private *pDevice,
 unsigned char byPktType,
 unsigned int cbFrameLength,
 unsigned short wRate,
 bool bNeedAck
)
{
 unsigned int uDataTime, uAckTime;

 uDataTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, cbFrameLength, wRate);
 if (byPktType == PK_TYPE_11B)
  uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, (unsigned short)pDevice->byTopCCKBasicRate);
 else
  uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, (unsigned short)pDevice->byTopOFDMBasicRate);

 if (bNeedAck)
  return uDataTime + pDevice->uSIFS + uAckTime;
 else
  return uDataTime;
}
