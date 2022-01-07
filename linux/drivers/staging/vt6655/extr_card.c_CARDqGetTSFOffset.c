
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 unsigned char MAX_RATE ;
 unsigned short* cwRXBCNTSFOff ;

u64 CARDqGetTSFOffset(unsigned char byRxRate, u64 qwTSF1, u64 qwTSF2)
{
 unsigned short wRxBcnTSFOffst;

 wRxBcnTSFOffst = cwRXBCNTSFOff[byRxRate % MAX_RATE];

 qwTSF2 += (u64)wRxBcnTSFOffst;

 return qwTSF1 - qwTSF2;
}
