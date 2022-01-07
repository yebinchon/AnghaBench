
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int PBTC_COEXIST ;


 int halbtc8723b2ant_SetDacSwingReg (int ,int) ;

__attribute__((used)) static void halbtc8723b2ant_SetSwFullTimeDacSwing(
 PBTC_COEXIST pBtCoexist, bool bSwDacSwingOn, u32 swDacSwingLvl
)
{
 if (bSwDacSwingOn)
  halbtc8723b2ant_SetDacSwingReg(pBtCoexist, swDacSwingLvl);
 else
  halbtc8723b2ant_SetDacSwingReg(pBtCoexist, 0x18);
}
