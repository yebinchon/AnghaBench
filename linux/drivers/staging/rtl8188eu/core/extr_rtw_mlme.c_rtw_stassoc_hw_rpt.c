
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sta_info {int mac_id; } ;
struct adapter {int dummy; } ;


 int HW_VAR_H2C_MEDIA_STATUS_RPT ;
 int HW_VAR_TX_RPT_MAX_MACID ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int *) ;
 int search_max_mac_id (struct adapter*) ;

void rtw_stassoc_hw_rpt(struct adapter *adapter, struct sta_info *psta)
{
 u16 media_status;
 u8 macid;

 if (!psta)
  return;

 macid = search_max_mac_id(adapter);
 rtw_hal_set_hwreg(adapter, HW_VAR_TX_RPT_MAX_MACID, (u8 *)&macid);
 media_status = (psta->mac_id<<8)|1;
 rtw_hal_set_hwreg(adapter, HW_VAR_H2C_MEDIA_STATUS_RPT, (u8 *)&media_status);
}
