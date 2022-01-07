
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;
typedef int s32 ;


 int HAL_DEF_MACID_SLEEP ;
 int HW_VAR_MACID_WAKEUP ;
 int _FAIL ;
 int _SUCCESS ;
 int rtw_hal_get_def_var (struct adapter*,int ,int*) ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int*) ;

s32 rtw_hal_macid_wakeup(struct adapter *padapter, u32 macid)
{
 u8 support;


 support = 0;
 rtw_hal_get_def_var(padapter, HAL_DEF_MACID_SLEEP, &support);
 if (0 == support)
  return _FAIL;

 rtw_hal_set_hwreg(padapter, HW_VAR_MACID_WAKEUP, (u8 *)&macid);

 return _SUCCESS;
}
