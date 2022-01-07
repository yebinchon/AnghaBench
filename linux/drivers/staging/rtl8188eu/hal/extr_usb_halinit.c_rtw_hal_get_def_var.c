
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct sta_priv {int dummy; } ;
struct TYPE_7__ {int UndecoratedSmoothedPWDB; } ;
struct sta_info {TYPE_3__ rssi_stat; } ;
struct odm_dm_struct {int DebugComponents; TYPE_4__* RAInfo; scalar_t__ SupportAbility; } ;
struct TYPE_5__ {int MacAddress; } ;
struct TYPE_6__ {TYPE_1__ network; } ;
struct mlme_priv {TYPE_2__ cur_network; } ;
struct hal_data_8188e {size_t CurAntenna; size_t bDumpRxPkt; size_t bDumpTxPkt; struct odm_dm_struct odmpriv; int AntDivCfg; } ;
struct adapter {struct mlme_priv mlmepriv; struct sta_priv stapriv; struct hal_data_8188e* HalData; } ;
typedef enum hal_def_variable { ____Placeholder_hal_def_variable } hal_def_variable ;
struct TYPE_8__ {int PTStage; int DecisionRate; int RateSGI; int RAUseRate; int RateID; } ;


 int DBG_88E (char*,...) ;
 scalar_t__ DRVINFO_SZ ;
 scalar_t__ MAX_AMPDU_FACTOR_64K ;
 scalar_t__ MAX_RECVBUF_SZ ;
 size_t ODM_RA_GetDecisionRate_8188E (struct odm_dm_struct*,size_t) ;
 size_t ODM_RA_GetHwPwrStatus_8188E (struct odm_dm_struct*,size_t) ;
 size_t ODM_RA_GetShortGI_8188E (struct odm_dm_struct*,size_t) ;
 scalar_t__ RXDESC_SIZE ;
 size_t _FAIL ;
 int _FW_LINKED ;
 size_t _SUCCESS ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int pr_info (char*,int ) ;
 struct sta_info* rtw_get_stainfo (struct sta_priv*,int ) ;

u8 rtw_hal_get_def_var(struct adapter *Adapter, enum hal_def_variable eVariable,
         void *pValue)
{
 struct hal_data_8188e *haldata = Adapter->HalData;
 u8 bResult = _SUCCESS;

 switch (eVariable) {
 case 131:
  {
   struct mlme_priv *pmlmepriv = &Adapter->mlmepriv;
   struct sta_priv *pstapriv = &Adapter->stapriv;
   struct sta_info *psta;

   psta = rtw_get_stainfo(pstapriv, pmlmepriv->cur_network.network.MacAddress);
   if (psta)
    *((int *)pValue) = psta->rssi_stat.UndecoratedSmoothedPWDB;
  }
  break;
 case 137:
  *((u8 *)pValue) = (haldata->AntDivCfg == 0) ? 0 : 1;
  break;
 case 142:
  *((u8 *)pValue) = haldata->CurAntenna;
  break;
 case 138:
  *((u32 *)pValue) = DRVINFO_SZ;
  break;
 case 136:
  *((u32 *)pValue) = MAX_RECVBUF_SZ;
  break;
 case 132:
  *((u32 *)pValue) = RXDESC_SIZE + DRVINFO_SZ;
  break;
 case 141:
  *((u32 *)pValue) = haldata->odmpriv.SupportAbility;
  break;
 case 134:
  {
   u8 MacID = *((u8 *)pValue);

   *((u8 *)pValue) = ODM_RA_GetDecisionRate_8188E(&haldata->odmpriv, MacID);
  }
  break;
 case 133:
  {
   u8 MacID = *((u8 *)pValue);

   *((u8 *)pValue) = ODM_RA_GetShortGI_8188E(&haldata->odmpriv, MacID);
  }
  break;
 case 135:
  {
   u8 MacID = *((u8 *)pValue);

   *((u8 *)pValue) = ODM_RA_GetHwPwrStatus_8188E(&haldata->odmpriv, MacID);
  }
  break;
 case 128:
  *((u32 *)pValue) = MAX_AMPDU_FACTOR_64K;
  break;
 case 129:
  {
   u8 entry_id = *((u8 *)pValue);

   if (check_fwstate(&Adapter->mlmepriv, _FW_LINKED)) {
    DBG_88E("============ RA status check ===================\n");
    DBG_88E("Mac_id:%d , RateID = %d, RAUseRate = 0x%08x, RateSGI = %d, DecisionRate = 0x%02x ,PTStage = %d\n",
     entry_id,
     haldata->odmpriv.RAInfo[entry_id].RateID,
     haldata->odmpriv.RAInfo[entry_id].RAUseRate,
     haldata->odmpriv.RAInfo[entry_id].RateSGI,
     haldata->odmpriv.RAInfo[entry_id].DecisionRate,
     haldata->odmpriv.RAInfo[entry_id].PTStage);
   }
  }
  break;
 case 130:
  {
   struct odm_dm_struct *dm_ocm = &haldata->odmpriv;

   pr_info("dm_ocm->DebugComponents = 0x%llx\n", dm_ocm->DebugComponents);
  }
  break;
 case 140:
  *((u8 *)pValue) = haldata->bDumpRxPkt;
  break;
 case 139:
  *((u8 *)pValue) = haldata->bDumpTxPkt;
  break;
 default:
  bResult = _FAIL;
  break;
 }

 return bResult;
}
