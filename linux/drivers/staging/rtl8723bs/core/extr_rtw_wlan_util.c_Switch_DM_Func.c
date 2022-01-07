
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;


 int HW_VAR_DM_FUNC_CLR ;
 int HW_VAR_DM_FUNC_SET ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int*) ;

void Switch_DM_Func(struct adapter *padapter, u32 mode, u8 enable)
{
 if (enable == 1)
  rtw_hal_set_hwreg(padapter, HW_VAR_DM_FUNC_SET, (u8 *)(&mode));
 else
  rtw_hal_set_hwreg(padapter, HW_VAR_DM_FUNC_CLR, (u8 *)(&mode));
}
