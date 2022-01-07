
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int PDM_ODM_T ;


 int ARRAY_SIZE (int*) ;
 int* Array_MP_8723B_MAC_REG ;
 int BIT28 ;
 int BIT29 ;
 scalar_t__ COND_ELSE ;
 scalar_t__ COND_ENDIF ;
 int CheckNegative (int ,int,int) ;
 int CheckPositive (int ,int,int) ;
 int ODM_COMP_INIT ;
 int ODM_DBG_LOUD ;
 int ODM_RT_TRACE (int ,int ,int ,char*) ;
 int READ_NEXT_PAIR (int,int,int) ;
 int odm_ConfigMAC_8723B (int ,int,scalar_t__) ;

void ODM_ReadAndConfig_MP_8723B_MAC_REG(PDM_ODM_T pDM_Odm)
{
 u32 i = 0;
 u32 ArrayLen = ARRAY_SIZE(Array_MP_8723B_MAC_REG);
 u32 *Array = Array_MP_8723B_MAC_REG;

 ODM_RT_TRACE(
  pDM_Odm,
  ODM_COMP_INIT,
  ODM_DBG_LOUD,
  ("===> ODM_ReadAndConfig_MP_8723B_MAC_REG\n")
 );

 for (i = 0; i < ArrayLen; i += 2) {
  u32 v1 = Array[i];
  u32 v2 = Array[i+1];


  if (v1 < 0x40000000) {
   odm_ConfigMAC_8723B(pDM_Odm, v1, (u8)v2);
   continue;
  } else {

   bool bMatched = 1;
   u8 cCond = (u8)((v1 & (BIT29|BIT28)) >> 28);

   if (cCond == COND_ELSE) {
    bMatched = 1;
    READ_NEXT_PAIR(v1, v2, i);
   } else if (!CheckPositive(pDM_Odm, v1, v2)) {
    bMatched = 0;
    READ_NEXT_PAIR(v1, v2, i);
    READ_NEXT_PAIR(v1, v2, i);
   } else {
    READ_NEXT_PAIR(v1, v2, i);
    if (!CheckNegative(pDM_Odm, v1, v2))
     bMatched = 0;
    else
     bMatched = 1;
    READ_NEXT_PAIR(v1, v2, i);
   }

   if (!bMatched) {

    while (v1 < 0x40000000 && i < ArrayLen-2)
     READ_NEXT_PAIR(v1, v2, i);

    i -= 2;
   } else {
    while (v1 < 0x40000000 && i < ArrayLen-2) {
     odm_ConfigMAC_8723B(pDM_Odm, v1, (u8)v2);
     READ_NEXT_PAIR(v1, v2, i);
    }


    cCond = (u8)((v1 & (BIT29|BIT28)) >> 28);
    while (cCond != COND_ENDIF && i < ArrayLen-2) {
     READ_NEXT_PAIR(v1, v2, i);
     cCond = (u8)((v1 & (BIT29|BIT28)) >> 28);
    }
   }
  }
 }
}
