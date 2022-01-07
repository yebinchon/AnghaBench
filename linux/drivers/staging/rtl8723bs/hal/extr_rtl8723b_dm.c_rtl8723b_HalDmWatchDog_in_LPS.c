
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct sta_priv {int dummy; } ;
struct TYPE_5__ {scalar_t__ UndecoratedSmoothedPWDB; } ;
struct sta_info {TYPE_1__ rssi_stat; } ;
struct mlme_priv {int dummy; } ;
struct TYPE_6__ {int CurIGValue; } ;
struct TYPE_7__ {int SupportAbility; scalar_t__ RSSI_Min; TYPE_2__ DM_DigTable; } ;
struct dm_priv {scalar_t__ EntryMinUndecoratedSmoothedPWDB; scalar_t__ MinUndecoratedPWDBForDM; } ;
struct hal_com_data {TYPE_3__ odmpriv; struct dm_priv dmpriv; } ;
struct adapter {int hw_init_completed; struct sta_priv stapriv; struct mlme_priv mlmepriv; } ;
typedef TYPE_2__* pDIG_T ;
typedef TYPE_3__* PDM_ODM_T ;


 int DBG_871X (char*,int,scalar_t__) ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int ODM_BB_RSSI_MONITOR ;
 int ODM_CMNINFO_LINK ;
 int ODM_CmnInfoUpdate (TYPE_3__*,int ,int) ;
 int get_bssid (struct mlme_priv*) ;
 int rtw_dm_in_lps_wk_cmd (struct adapter*) ;
 struct sta_info* rtw_get_stainfo (struct sta_priv*,int ) ;
 scalar_t__ rtw_linked_check (struct adapter*) ;

void rtl8723b_HalDmWatchDog_in_LPS(struct adapter *Adapter)
{
 u8 bLinked = 0;
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 struct mlme_priv *pmlmepriv = &Adapter->mlmepriv;
 struct dm_priv *pdmpriv = &pHalData->dmpriv;
 PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
 pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;
 struct sta_priv *pstapriv = &Adapter->stapriv;
 struct sta_info *psta = ((void*)0);

 if (Adapter->hw_init_completed == 0)
  goto skip_lps_dm;


 if (rtw_linked_check(Adapter))
  bLinked = 1;

 ODM_CmnInfoUpdate(&pHalData->odmpriv, ODM_CMNINFO_LINK, bLinked);

 if (bLinked == 0)
  goto skip_lps_dm;

 if (!(pDM_Odm->SupportAbility & ODM_BB_RSSI_MONITOR))
  goto skip_lps_dm;






 psta = rtw_get_stainfo(pstapriv, get_bssid(pmlmepriv));
 if (!psta)
  goto skip_lps_dm;

 pdmpriv->EntryMinUndecoratedSmoothedPWDB = psta->rssi_stat.UndecoratedSmoothedPWDB;

 DBG_871X("CurIGValue =%d, EntryMinUndecoratedSmoothedPWDB = %d\n", pDM_DigTable->CurIGValue, pdmpriv->EntryMinUndecoratedSmoothedPWDB);

 if (pdmpriv->EntryMinUndecoratedSmoothedPWDB <= 0)
  goto skip_lps_dm;

 pdmpriv->MinUndecoratedPWDBForDM = pdmpriv->EntryMinUndecoratedSmoothedPWDB;

 pDM_Odm->RSSI_Min = pdmpriv->MinUndecoratedPWDBForDM;


 if (
  (pDM_DigTable->CurIGValue > pDM_Odm->RSSI_Min + 5) ||
  (pDM_DigTable->CurIGValue < pDM_Odm->RSSI_Min - 5)
 )
  rtw_dm_in_lps_wk_cmd(Adapter);


skip_lps_dm:

 return;

}
