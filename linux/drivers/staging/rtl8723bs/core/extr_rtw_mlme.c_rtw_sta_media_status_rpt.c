
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct sta_info {int mac_id; } ;
struct adapter {int dummy; } ;


 int HW_VAR_H2C_MEDIA_STATUS_RPT ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int *) ;

void rtw_sta_media_status_rpt(struct adapter *adapter, struct sta_info *psta, u32 mstatus)
{
 u16 media_status_rpt;

 if (psta == ((void*)0))
  return;

 media_status_rpt = (u16)((psta->mac_id<<8)|mstatus);
 rtw_hal_set_hwreg(adapter, HW_VAR_H2C_MEDIA_STATUS_RPT, (u8 *)&media_status_rpt);
}
