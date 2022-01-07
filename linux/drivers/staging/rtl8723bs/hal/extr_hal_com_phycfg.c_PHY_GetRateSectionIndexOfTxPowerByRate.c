
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ PhyRegPgVersion; } ;
struct hal_com_data {TYPE_1__ odmpriv; } ;
struct adapter {int dummy; } ;
typedef TYPE_1__* PDM_ODM_T ;


 int DBG_871X (char*,int) ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int bMaskH3Bytes ;
u8 PHY_GetRateSectionIndexOfTxPowerByRate(
 struct adapter *padapter, u32 RegAddr, u32 BitMask
)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
 u8 index = 0;

 if (pDM_Odm->PhyRegPgVersion == 0) {
  switch (RegAddr) {
  case 137:
   index = 0;
   break;
  case 136:
   index = 1;
   break;
  case 142:
   index = 6;
   break;
  case 135:
   if (BitMask == bMaskH3Bytes)
    index = 7;
   else if (BitMask == 0x000000ff)
    index = 15;
   break;

  case 141:
   index = 2;
   break;
  case 140:
   index = 3;
   break;
  case 139:
   index = 4;
   break;
  case 138:
   index = 5;
   break;
  case 129:
   index = 8;
   break;
  case 128:
   index = 9;
   break;
  case 134:
   index = 14;
   break;
  case 133:
   index = 10;
   break;
  case 132:
   index = 11;
   break;
  case 131:
   index = 12;
   break;
  case 130:
   index = 13;
   break;
  default:
   DBG_871X("Invalid RegAddr 0x3%x in PHY_GetRateSectionIndexOfTxPowerByRate()", RegAddr);
   break;
  }
 }

 return index;
}
