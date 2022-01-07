
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int HW_VAR_MEDIA_STATUS ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int *) ;

void Set_MSR(struct adapter *padapter, u8 type)
{
 rtw_hal_set_hwreg(padapter, HW_VAR_MEDIA_STATUS, (u8 *)(&type));
}
