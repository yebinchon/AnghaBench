
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int Adapter; } ;
typedef TYPE_1__* PDM_ODM_T ;


 int ODM_COMP_INIT ;
 int ODM_DBG_TRACE ;
 int ODM_RT_TRACE (TYPE_1__*,int ,int ,char*) ;
 int rtw_write8 (int ,int ,int ) ;

void odm_ConfigMAC_8723B(PDM_ODM_T pDM_Odm, u32 Addr, u8 Data)
{
 rtw_write8(pDM_Odm->Adapter, Addr, Data);
 ODM_RT_TRACE(
  pDM_Odm,
  ODM_COMP_INIT,
  ODM_DBG_TRACE,
  (
   "===> ODM_ConfigMACWithHeaderFile: [MAC_REG] %08X %08X\n",
   Addr,
   Data
  )
 );
}
