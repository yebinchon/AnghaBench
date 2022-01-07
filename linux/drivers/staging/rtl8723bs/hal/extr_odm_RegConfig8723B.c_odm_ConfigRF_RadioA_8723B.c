
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int PDM_ODM_T ;


 int ODM_COMP_INIT ;
 int ODM_DBG_TRACE ;
 int ODM_RF_PATH_A ;
 int ODM_RT_TRACE (int ,int ,int ,char*) ;
 int odm_ConfigRFReg_8723B (int ,int,int,int ,int) ;

void odm_ConfigRF_RadioA_8723B(PDM_ODM_T pDM_Odm, u32 Addr, u32 Data)
{
 u32 content = 0x1000;
 u32 maskforPhySet = (u32)(content&0xE000);

 odm_ConfigRFReg_8723B(
  pDM_Odm,
  Addr,
  Data,
  ODM_RF_PATH_A,
  Addr|maskforPhySet
 );

 ODM_RT_TRACE(
  pDM_Odm,
  ODM_COMP_INIT,
  ODM_DBG_TRACE,
  (
   "===> ODM_ConfigRFWithHeaderFile: [RadioA] %08X %08X\n",
   Addr,
   Data
  )
 );
}
