
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int PDM_ODM_T ;


 int ARRAY_SIZE (int **) ;
 int ** Array_MP_8723B_TXPWR_LMT ;
 int ODM_COMP_INIT ;
 int ODM_DBG_LOUD ;
 int ODM_RT_TRACE (int ,int ,int ,char*) ;
 int odm_ConfigBB_TXPWR_LMT_8723B (int ,int *,int *,int *,int *,int *,int *,int *) ;

void ODM_ReadAndConfig_MP_8723B_TXPWR_LMT(PDM_ODM_T pDM_Odm)
{
 u32 i = 0;
 u8 **Array = Array_MP_8723B_TXPWR_LMT;

 ODM_RT_TRACE(
  pDM_Odm,
  ODM_COMP_INIT,
  ODM_DBG_LOUD,
  ("===> ODM_ReadAndConfig_MP_8723B_TXPWR_LMT\n")
 );

 for (i = 0; i < ARRAY_SIZE(Array_MP_8723B_TXPWR_LMT); i += 7) {
  u8 *regulation = Array[i];
  u8 *band = Array[i+1];
  u8 *bandwidth = Array[i+2];
  u8 *rate = Array[i+3];
  u8 *rfPath = Array[i+4];
  u8 *chnl = Array[i+5];
  u8 *val = Array[i+6];

  odm_ConfigBB_TXPWR_LMT_8723B(
   pDM_Odm,
   regulation,
   band,
   bandwidth,
   rate,
   rfPath,
   chnl,
   val
  );
 }
}
