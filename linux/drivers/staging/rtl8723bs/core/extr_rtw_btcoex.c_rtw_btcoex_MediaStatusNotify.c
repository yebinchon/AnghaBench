
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct adapter {int mlmepriv; } ;


 int HW_VAR_DL_RSVD_PAGE ;
 scalar_t__ RT_MEDIA_CONNECT ;
 int WIFI_AP_STATE ;
 int check_fwstate (int *,int ) ;
 int hal_btcoex_MediaStatusNotify (struct adapter*,scalar_t__) ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int *) ;

void rtw_btcoex_MediaStatusNotify(struct adapter *padapter, u8 mediaStatus)
{
 if ((mediaStatus == RT_MEDIA_CONNECT)
  && (check_fwstate(&padapter->mlmepriv, WIFI_AP_STATE) == 1)) {
  rtw_hal_set_hwreg(padapter, HW_VAR_DL_RSVD_PAGE, ((void*)0));
 }

 hal_btcoex_MediaStatusNotify(padapter, mediaStatus);
}
