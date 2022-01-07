
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int HW_VAR_DM_FUNC_OP ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int*) ;

void Restore_DM_Func_Flag(struct adapter *padapter)
{
 u8 saveflag = 0;

 rtw_hal_set_hwreg(padapter, HW_VAR_DM_FUNC_OP, (u8 *)(&saveflag));
}
