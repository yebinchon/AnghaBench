
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sta_info {int mac_id; } ;
struct odm_dm_struct {int bWIFI_Direct; int bWIFI_Display; } ;
struct adapter {TYPE_1__* HalData; } ;
typedef enum hal_odm_variable { ____Placeholder_hal_odm_variable } hal_odm_variable ;
struct TYPE_2__ {struct odm_dm_struct odmpriv; } ;


 int DBG_88E (char*,int ) ;



 int ODM_CMNINFO_STA_STATUS ;
 int ODM_CmnInfoPtrArrayHook (struct odm_dm_struct*,int ,int ,struct sta_info*) ;
 int ODM_RAInfo_Init (struct odm_dm_struct*,int ) ;

void rtw_hal_set_odm_var(struct adapter *Adapter, enum hal_odm_variable eVariable, void *pValue1, bool bSet)
{
 struct odm_dm_struct *podmpriv = &Adapter->HalData->odmpriv;

 switch (eVariable) {
 case 129:
  {
   struct sta_info *psta = pValue1;

   if (bSet) {
    DBG_88E("### Set STA_(%d) info\n", psta->mac_id);
    ODM_CmnInfoPtrArrayHook(podmpriv, ODM_CMNINFO_STA_STATUS, psta->mac_id, psta);
    ODM_RAInfo_Init(podmpriv, psta->mac_id);
   } else {
    DBG_88E("### Clean STA_(%d) info\n", psta->mac_id);
    ODM_CmnInfoPtrArrayHook(podmpriv, ODM_CMNINFO_STA_STATUS, psta->mac_id, ((void*)0));
         }
  }
  break;
 case 130:
  podmpriv->bWIFI_Direct = bSet;
  break;
 case 128:
  podmpriv->bWIFI_Display = bSet;
  break;
 default:
  break;
 }
}
