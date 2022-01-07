
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int HW_VAR_ANTENNA_DIVERSITY_SELECT ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int *) ;

__attribute__((used)) static void antenna_select_wk_hdl(struct adapter *padapter, u8 antenna)
{
 rtw_hal_set_hwreg(padapter, HW_VAR_ANTENNA_DIVERSITY_SELECT, (u8 *)(&antenna));
}
