
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {int lock; } ;
struct cmd_obj {scalar_t__ res; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 scalar_t__ H2C_SUCCESS ;
 int RT_TRACE (int ,int ,char*) ;
 int _FW_LINKED ;
 int _drv_err_ ;
 int _module_rtl871x_cmd_c_ ;
 int rtw_free_cmd_obj (struct cmd_obj*) ;
 int set_fwstate (struct mlme_priv*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void rtw_disassoc_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
{
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

 if (pcmd->res != H2C_SUCCESS) {
  spin_lock_bh(&pmlmepriv->lock);
  set_fwstate(pmlmepriv, _FW_LINKED);
  spin_unlock_bh(&pmlmepriv->lock);

  RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\n ***Error: disconnect_cmd_callback Fail ***\n."));
  return;
 }

 rtw_free_cmd_obj(pcmd);
}
