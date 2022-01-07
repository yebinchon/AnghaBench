
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int DBG_871X_SEL_NL (void*,char*,int,...) ;
 int HW_DEF_ODM_DBG_LEVEL ;
 int RTW_ODM_DBG_LEVEL_NUM ;
 scalar_t__* odm_dbg_level_str ;
 int rtw_hal_get_def_var (struct adapter*,int ,int *) ;

void rtw_odm_dbg_level_msg(void *sel, struct adapter *adapter)
{
 u32 dbg_level;
 int i;

 rtw_hal_get_def_var(adapter, HW_DEF_ODM_DBG_LEVEL, &dbg_level);
 DBG_871X_SEL_NL(sel, "odm.DebugLevel = %u\n", dbg_level);
 for (i = 0; i < RTW_ODM_DBG_LEVEL_NUM; i++) {
  if (odm_dbg_level_str[i])
   DBG_871X_SEL_NL(sel, "%u %s\n",
     i, odm_dbg_level_str[i]);
 }
}
