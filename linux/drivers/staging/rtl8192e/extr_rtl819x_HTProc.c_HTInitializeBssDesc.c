
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bss_ht {int bdSupportHT; int bdRT2RTAggregation; int bdRT2RTLongSlotTime; int RT2RT_HT_Mode; int bdHTSpecVer; scalar_t__ bdHTInfoLen; int bdHTInfoBuf; scalar_t__ bdHTCapLen; int bdHTCapBuf; } ;
typedef enum rt_ht_capability { ____Placeholder_rt_ht_capability } rt_ht_capability ;


 int HT_SPEC_VER_IEEE ;
 int memset (int ,int ,int) ;

void HTInitializeBssDesc(struct bss_ht *pBssHT)
{

 pBssHT->bdSupportHT = 0;
 memset(pBssHT->bdHTCapBuf, 0, sizeof(pBssHT->bdHTCapBuf));
 pBssHT->bdHTCapLen = 0;
 memset(pBssHT->bdHTInfoBuf, 0, sizeof(pBssHT->bdHTInfoBuf));
 pBssHT->bdHTInfoLen = 0;

 pBssHT->bdHTSpecVer = HT_SPEC_VER_IEEE;

 pBssHT->bdRT2RTAggregation = 0;
 pBssHT->bdRT2RTLongSlotTime = 0;
 pBssHT->RT2RT_HT_Mode = (enum rt_ht_capability)0;
}
