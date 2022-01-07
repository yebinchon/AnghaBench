
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int HW_VAR_DM_IN_LPS ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int *) ;

__attribute__((used)) static void rtw_dm_in_lps_hdl(struct adapter *padapter)
{
 rtw_hal_set_hwreg(padapter, HW_VAR_DM_IN_LPS, ((void*)0));
}
