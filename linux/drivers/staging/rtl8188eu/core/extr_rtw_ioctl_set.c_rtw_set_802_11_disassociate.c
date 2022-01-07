
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlme_priv {int lock; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 int RT_TRACE (int ,int ,char*) ;
 int _FW_LINKED ;
 int _drv_info_ ;
 int _module_rtl871x_ioctl_set_c_ ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int rtw_disassoc_cmd (struct adapter*,int ,int) ;
 int rtw_free_assoc_resources (struct adapter*) ;
 int rtw_indicate_disconnect (struct adapter*) ;
 int rtw_pwr_wakeup (struct adapter*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

u8 rtw_set_802_11_disassociate(struct adapter *padapter)
{
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

 spin_lock_bh(&pmlmepriv->lock);

 if (check_fwstate(pmlmepriv, _FW_LINKED)) {
  RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_,
    ("MgntActrtw_set_802_11_disassociate: rtw_indicate_disconnect\n"));

  rtw_disassoc_cmd(padapter, 0, 1);
  rtw_indicate_disconnect(padapter);
  rtw_free_assoc_resources(padapter);
  rtw_pwr_wakeup(padapter);
 }

 spin_unlock_bh(&pmlmepriv->lock);

 return 1;
}
