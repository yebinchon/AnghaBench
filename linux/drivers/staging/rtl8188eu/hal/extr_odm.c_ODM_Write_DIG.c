
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtw_dig {scalar_t__ CurIGValue; } ;
struct odm_dm_struct {struct adapter* Adapter; struct rtw_dig DM_DigTable; } ;
struct adapter {int dummy; } ;


 int ODM_BIT_IGI_11N ;
 int ODM_REG_IGI_A_11N ;
 int phy_set_bb_reg (struct adapter*,int ,int ,scalar_t__) ;

void ODM_Write_DIG(struct odm_dm_struct *pDM_Odm, u8 CurrentIGI)
{
 struct rtw_dig *pDM_DigTable = &pDM_Odm->DM_DigTable;
 struct adapter *adapter = pDM_Odm->Adapter;

 if (pDM_DigTable->CurIGValue != CurrentIGI) {
  phy_set_bb_reg(adapter, ODM_REG_IGI_A_11N, ODM_BIT_IGI_11N, CurrentIGI);
  pDM_DigTable->CurIGValue = CurrentIGI;
 }
}
