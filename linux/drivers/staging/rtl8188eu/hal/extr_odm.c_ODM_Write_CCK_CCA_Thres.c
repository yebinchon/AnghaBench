
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtw_dig {scalar_t__ CurCCK_CCAThres; scalar_t__ PreCCK_CCAThres; } ;
struct odm_dm_struct {struct adapter* Adapter; struct rtw_dig DM_DigTable; } ;
struct adapter {int dummy; } ;


 int ODM_REG_CCK_CCA_11N ;
 int usb_write8 (struct adapter*,int ,scalar_t__) ;

void ODM_Write_CCK_CCA_Thres(struct odm_dm_struct *pDM_Odm, u8 CurCCK_CCAThres)
{
 struct rtw_dig *pDM_DigTable = &pDM_Odm->DM_DigTable;
 struct adapter *adapt = pDM_Odm->Adapter;

 if (pDM_DigTable->CurCCK_CCAThres != CurCCK_CCAThres)
  usb_write8(adapt, ODM_REG_CCK_CCA_11N, CurCCK_CCAThres);
 pDM_DigTable->PreCCK_CCAThres = pDM_DigTable->CurCCK_CCAThres;
 pDM_DigTable->CurCCK_CCAThres = CurCCK_CCAThres;
}
