
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_ext_priv {int dummy; } ;
struct adapter {int dummy; } ;


 int HW_VAR_CORRECT_TSF ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int *) ;

void correct_TSF(struct adapter *padapter, struct mlme_ext_priv *pmlmeext)
{
 rtw_hal_set_hwreg(padapter, HW_VAR_CORRECT_TSF, ((void*)0));
}
