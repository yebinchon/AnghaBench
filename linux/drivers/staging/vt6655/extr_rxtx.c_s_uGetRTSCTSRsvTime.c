
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vnt_private {unsigned short byTopCCKBasicRate; unsigned short byTopOFDMBasicRate; int uSIFS; int byPreambleType; } ;
typedef int __le16 ;


 unsigned int BBuGetFrameTime (int ,unsigned char,int,unsigned short) ;
 int cpu_to_le16 (int ) ;

__attribute__((used)) static
__le16
s_uGetRTSCTSRsvTime(
 struct vnt_private *pDevice,
 unsigned char byRTSRsvType,
 unsigned char byPktType,
 unsigned int cbFrameLength,
 unsigned short wCurrentRate
)
{
 unsigned int uRrvTime, uRTSTime, uCTSTime, uAckTime, uDataTime;

 uRrvTime = uRTSTime = uCTSTime = uAckTime = uDataTime = 0;

 uDataTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, cbFrameLength, wCurrentRate);
 if (byRTSRsvType == 0) {
  uRTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 20, pDevice->byTopCCKBasicRate);
  uCTSTime = uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 } else if (byRTSRsvType == 1) {
  uRTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 20, pDevice->byTopCCKBasicRate);
  uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
  uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 } else if (byRTSRsvType == 2) {
  uRTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 20, pDevice->byTopOFDMBasicRate);
  uCTSTime = uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 } else if (byRTSRsvType == 3) {
  uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
  uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
  uRrvTime = uCTSTime + uAckTime + uDataTime + 2 * pDevice->uSIFS;
  return cpu_to_le16((u16)uRrvTime);
 }


 uRrvTime = uRTSTime + uCTSTime + uAckTime + uDataTime + 3 * pDevice->uSIFS;
 return cpu_to_le16((u16)uRrvTime);
}
