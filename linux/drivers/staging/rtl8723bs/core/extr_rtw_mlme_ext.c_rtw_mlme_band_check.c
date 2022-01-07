
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {scalar_t__ setband; } ;


 scalar_t__ GHZ24_50 ;
 scalar_t__ GHZ_24 ;
 scalar_t__ GHZ_50 ;

bool rtw_mlme_band_check(struct adapter *adapter, const u32 ch)
{
 if (adapter->setband == GHZ24_50
  || (adapter->setband == GHZ_24 && ch < 35)
  || (adapter->setband == GHZ_50 && ch > 35)
 ) {
  return 1;
 }
 return 0;
}
