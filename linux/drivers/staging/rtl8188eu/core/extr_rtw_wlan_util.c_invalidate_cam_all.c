
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int HW_VAR_CAM_INVALID_ALL ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int *) ;

void invalidate_cam_all(struct adapter *padapter)
{
 rtw_hal_set_hwreg(padapter, HW_VAR_CAM_INVALID_ALL, ((void*)0));
}
