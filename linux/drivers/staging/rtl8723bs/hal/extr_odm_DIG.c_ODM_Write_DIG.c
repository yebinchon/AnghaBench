
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef TYPE_1__* pDIG_T ;
struct TYPE_6__ {scalar_t__ CurIGValue; scalar_t__ rx_gain_range_max; int bPSDInProgress; scalar_t__ bStopDIG; } ;
struct TYPE_7__ {scalar_t__ RFType; int Adapter; TYPE_1__ DM_DigTable; } ;
typedef TYPE_2__* PDM_ODM_T ;


 int IGI ;
 int IGI_A ;
 int IGI_B ;
 scalar_t__ ODM_1T1R ;
 int ODM_BIT (int ,TYPE_2__*) ;
 int ODM_COMP_DIG ;
 int ODM_DBG_LOUD ;
 int ODM_DBG_TRACE ;
 int ODM_REG (int ,TYPE_2__*) ;
 int ODM_RT_TRACE (TYPE_2__*,int ,int ,char*) ;
 int PHY_SetBBReg (int ,int ,int ,scalar_t__) ;

void ODM_Write_DIG(void *pDM_VOID, u8 CurrentIGI)
{
 PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
 pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;

 if (pDM_DigTable->bStopDIG) {
  ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("Stop Writing IGI\n"));
  return;
 }

 ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_TRACE, ("ODM_REG(IGI_A, pDM_Odm) = 0x%x, ODM_BIT(IGI, pDM_Odm) = 0x%x\n",
  ODM_REG(IGI_A, pDM_Odm), ODM_BIT(IGI, pDM_Odm)));

 if (pDM_DigTable->CurIGValue != CurrentIGI) {

  if (!pDM_DigTable->bPSDInProgress) {
   if (CurrentIGI > pDM_DigTable->rx_gain_range_max) {
    ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_TRACE, ("CurrentIGI(0x%02x) is larger than upper bound !!\n", pDM_DigTable->rx_gain_range_max));
    CurrentIGI = pDM_DigTable->rx_gain_range_max;
   }

  }


  PHY_SetBBReg(pDM_Odm->Adapter, ODM_REG(IGI_A, pDM_Odm), ODM_BIT(IGI, pDM_Odm), CurrentIGI);

  if (pDM_Odm->RFType > ODM_1T1R)
   PHY_SetBBReg(pDM_Odm->Adapter, ODM_REG(IGI_B, pDM_Odm), ODM_BIT(IGI, pDM_Odm), CurrentIGI);

  pDM_DigTable->CurIGValue = CurrentIGI;
 }

 ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_TRACE, ("CurrentIGI(0x%02x).\n", CurrentIGI));

}
