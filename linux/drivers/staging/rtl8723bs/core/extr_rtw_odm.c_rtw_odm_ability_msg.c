
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;


 int BIT0 ;
 int DBG_871X_SEL_NL (void*,char*,char,...) ;
 int HW_VAR_DM_FLAG ;
 int RTW_ODM_ABILITY_MAX ;
 scalar_t__* odm_ability_str ;
 int rtw_hal_get_hwreg (struct adapter*,int ,int *) ;

void rtw_odm_ability_msg(void *sel, struct adapter *adapter)
{
 u32 ability = 0;
 int i;

 rtw_hal_get_hwreg(adapter, HW_VAR_DM_FLAG, (u8 *)&ability);
 DBG_871X_SEL_NL(sel, "odm.SupportAbility = 0x%08x\n", ability);
 for (i = 0; i < RTW_ODM_ABILITY_MAX; i++) {
  if (odm_ability_str[i])
   DBG_871X_SEL_NL(sel, "%cBIT%-2d %s\n",
     (BIT0 << i) & ability ? '+' : ' ', i,
     odm_ability_str[i]);
 }
}
