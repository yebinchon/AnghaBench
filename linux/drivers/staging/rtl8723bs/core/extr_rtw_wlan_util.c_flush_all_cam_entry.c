
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlme_ext_info {scalar_t__ FW_sta_info; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;


 int HW_VAR_SEC_DK_CFG ;
 int invalidate_cam_all (struct adapter*) ;
 int memset (int *,int ,int) ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int *) ;

void flush_all_cam_entry(struct adapter *padapter)
{
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);

 invalidate_cam_all(padapter);

 rtw_hal_set_hwreg(padapter, HW_VAR_SEC_DK_CFG, (u8 *)0);

 memset((u8 *)(pmlmeinfo->FW_sta_info), 0, sizeof(pmlmeinfo->FW_sta_info));
}
