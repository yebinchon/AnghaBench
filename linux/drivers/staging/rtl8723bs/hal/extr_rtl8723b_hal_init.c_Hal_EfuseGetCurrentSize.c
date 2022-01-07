
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct adapter {int dummy; } ;


 scalar_t__ EFUSE_WIFI ;
 int hal_EfuseGetCurrentSize_BT (struct adapter*,int) ;
 int hal_EfuseGetCurrentSize_WiFi (struct adapter*,int) ;

__attribute__((used)) static u16 Hal_EfuseGetCurrentSize(
 struct adapter *padapter, u8 efuseType, bool bPseudoTest
)
{
 u16 ret = 0;

 if (efuseType == EFUSE_WIFI)
  ret = hal_EfuseGetCurrentSize_WiFi(padapter, bPseudoTest);
 else
  ret = hal_EfuseGetCurrentSize_BT(padapter, bPseudoTest);

 return ret;
}
