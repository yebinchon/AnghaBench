
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtw_dig {int PreCCK_CCAThres; int CurCCK_CCAThres; int bMediaConnect_0; int bMediaConnect_1; void* DIG_Dynamic_MIN_1; void* DIG_Dynamic_MIN_0; scalar_t__ Recover_cnt; scalar_t__ LargeFAHit; void* ForbiddenIGI; int BackoffVal_range_min; int BackoffVal_range_max; int BackoffVal; void* rx_gain_range_min; int rx_gain_range_max; int FAHighThresh; int FALowThresh; int RssiHighThresh; int RssiLowThresh; scalar_t__ CurIGValue; } ;
struct odm_dm_struct {int bDMInitialGainEnable; struct rtw_dig DM_DigTable; struct adapter* Adapter; } ;
struct adapter {int dummy; } ;


 int DM_DIG_BACKOFF_DEFAULT ;
 int DM_DIG_BACKOFF_MAX ;
 int DM_DIG_BACKOFF_MIN ;
 int DM_DIG_MAX_NIC ;
 void* DM_DIG_MIN_NIC ;
 int DM_DIG_THRESH_HIGH ;
 int DM_DIG_THRESH_LOW ;
 int DM_false_ALARM_THRESH_HIGH ;
 int DM_false_ALARM_THRESH_LOW ;
 int ODM_BIT_IGI_11N ;
 int ODM_REG_IGI_A_11N ;
 scalar_t__ phy_query_bb_reg (struct adapter*,int ,int ) ;

void odm_DIGInit(struct odm_dm_struct *pDM_Odm)
{
 struct adapter *adapter = pDM_Odm->Adapter;
 struct rtw_dig *pDM_DigTable = &pDM_Odm->DM_DigTable;

 pDM_DigTable->CurIGValue = (u8)phy_query_bb_reg(adapter, ODM_REG_IGI_A_11N, ODM_BIT_IGI_11N);
 pDM_DigTable->RssiLowThresh = DM_DIG_THRESH_LOW;
 pDM_DigTable->RssiHighThresh = DM_DIG_THRESH_HIGH;
 pDM_DigTable->FALowThresh = DM_false_ALARM_THRESH_LOW;
 pDM_DigTable->FAHighThresh = DM_false_ALARM_THRESH_HIGH;
 pDM_DigTable->rx_gain_range_max = DM_DIG_MAX_NIC;
 pDM_DigTable->rx_gain_range_min = DM_DIG_MIN_NIC;
 pDM_DigTable->BackoffVal = DM_DIG_BACKOFF_DEFAULT;
 pDM_DigTable->BackoffVal_range_max = DM_DIG_BACKOFF_MAX;
 pDM_DigTable->BackoffVal_range_min = DM_DIG_BACKOFF_MIN;
 pDM_DigTable->PreCCK_CCAThres = 0xFF;
 pDM_DigTable->CurCCK_CCAThres = 0x83;
 pDM_DigTable->ForbiddenIGI = DM_DIG_MIN_NIC;
 pDM_DigTable->LargeFAHit = 0;
 pDM_DigTable->Recover_cnt = 0;
 pDM_DigTable->DIG_Dynamic_MIN_0 = DM_DIG_MIN_NIC;
 pDM_DigTable->DIG_Dynamic_MIN_1 = DM_DIG_MIN_NIC;
 pDM_DigTable->bMediaConnect_0 = 0;
 pDM_DigTable->bMediaConnect_1 = 0;


 pDM_Odm->bDMInitialGainEnable = 1;
}
