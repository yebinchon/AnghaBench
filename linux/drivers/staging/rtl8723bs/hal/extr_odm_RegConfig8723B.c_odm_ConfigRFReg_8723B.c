
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int Adapter; } ;
typedef TYPE_1__* PDM_ODM_T ;
typedef int ODM_RF_RADIO_PATH_E ;


 int ODM_COMP_INIT ;
 int ODM_DBG_TRACE ;
 int ODM_RT_TRACE (TYPE_1__*,int ,int ,char*) ;
 int PHY_QueryRFReg (int ,int ,int,int ) ;
 int PHY_SetRFReg (int ,int ,int,int ,int) ;
 int bMaskDWord ;
 int bRFRegOffsetMask ;
 int msleep (int) ;
 int udelay (int) ;

void odm_ConfigRFReg_8723B(
 PDM_ODM_T pDM_Odm,
 u32 Addr,
 u32 Data,
 ODM_RF_RADIO_PATH_E RF_PATH,
 u32 RegAddr
)
{
 if (Addr == 0xfe || Addr == 0xffe)
  msleep(50);
 else {
  PHY_SetRFReg(pDM_Odm->Adapter, RF_PATH, RegAddr, bRFRegOffsetMask, Data);

  udelay(1);


  if (Addr == 0xb6) {
   u32 getvalue = 0;
   u8 count = 0;

   getvalue = PHY_QueryRFReg(
    pDM_Odm->Adapter, RF_PATH, Addr, bMaskDWord
   );

   udelay(1);

   while ((getvalue>>8) != (Data>>8)) {
    count++;
    PHY_SetRFReg(pDM_Odm->Adapter, RF_PATH, RegAddr, bRFRegOffsetMask, Data);
    udelay(1);
    getvalue = PHY_QueryRFReg(pDM_Odm->Adapter, RF_PATH, Addr, bMaskDWord);
    ODM_RT_TRACE(
     pDM_Odm,
     ODM_COMP_INIT,
     ODM_DBG_TRACE,
     (
      "===> ODM_ConfigRFWithHeaderFile: [B6] getvalue 0x%x, Data 0x%x, count %d\n",
      getvalue,
      Data,
      count
     )
    );
    if (count > 5)
     break;
   }
  }

  if (Addr == 0xb2) {
   u32 getvalue = 0;
   u8 count = 0;

   getvalue = PHY_QueryRFReg(
    pDM_Odm->Adapter, RF_PATH, Addr, bMaskDWord
   );

   udelay(1);

   while (getvalue != Data) {
    count++;
    PHY_SetRFReg(
     pDM_Odm->Adapter,
     RF_PATH,
     RegAddr,
     bRFRegOffsetMask,
     Data
    );
    udelay(1);

    PHY_SetRFReg(
     pDM_Odm->Adapter,
     RF_PATH,
     0x18,
     bRFRegOffsetMask,
     0x0fc07
    );
    udelay(1);
    getvalue = PHY_QueryRFReg(
     pDM_Odm->Adapter, RF_PATH, Addr, bMaskDWord
    );
    ODM_RT_TRACE(
     pDM_Odm,
     ODM_COMP_INIT,
     ODM_DBG_TRACE,
     (
      "===> ODM_ConfigRFWithHeaderFile: [B2] getvalue 0x%x, Data 0x%x, count %d\n",
      getvalue,
      Data,
      count
     )
    );

    if (count > 5)
     break;
   }
  }
 }
}
