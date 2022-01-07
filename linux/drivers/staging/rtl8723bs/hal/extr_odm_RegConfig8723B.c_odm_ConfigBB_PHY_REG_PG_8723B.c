
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int Adapter; } ;
typedef TYPE_1__* PDM_ODM_T ;


 int ODM_COMP_INIT ;
 int ODM_DBG_LOUD ;
 int ODM_RT_TRACE (TYPE_1__*,int ,int ,char*) ;
 int PHY_StoreTxPowerByRate (int ,int,int,int,int,int,int) ;
 int msleep (int) ;

void odm_ConfigBB_PHY_REG_PG_8723B(
 PDM_ODM_T pDM_Odm,
 u32 Band,
 u32 RfPath,
 u32 TxNum,
 u32 Addr,
 u32 Bitmask,
 u32 Data
)
{
 if (Addr == 0xfe || Addr == 0xffe)
  msleep(50);
 else {
  PHY_StoreTxPowerByRate(pDM_Odm->Adapter, Band, RfPath, TxNum, Addr, Bitmask, Data);
 }
 ODM_RT_TRACE(
  pDM_Odm,
  ODM_COMP_INIT,
  ODM_DBG_LOUD,
  (
   "===> ODM_ConfigBBWithHeaderFile: [PHY_REG] %08X %08X %08X\n",
   Addr,
   Bitmask,
   Data
  )
 );
}
