
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_priv {int dummy; } ;
struct sta_info {int mac_id; int aid; } ;
struct set_assocsta_rsp {int cam_id; } ;
struct set_assocsta_parm {int addr; } ;
struct mlme_priv {int lock; } ;
struct cmd_obj {scalar_t__ rsp; scalar_t__ parmbuf; } ;
struct adapter {struct mlme_priv mlmepriv; struct sta_priv stapriv; } ;


 int RT_TRACE (int ,int ,char*) ;
 int WIFI_MP_STATE ;
 int _FW_LINKED ;
 int _FW_UNDER_LINKING ;
 int _clr_fwstate_ (struct mlme_priv*,int ) ;
 int _drv_err_ ;
 int _module_rtl871x_cmd_c_ ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int rtw_free_cmd_obj (struct cmd_obj*) ;
 struct sta_info* rtw_get_stainfo (struct sta_priv*,int ) ;
 int set_fwstate (struct mlme_priv*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void rtw_setassocsta_cmdrsp_callback(struct adapter *padapter, struct cmd_obj *pcmd)
{
 struct sta_priv *pstapriv = &padapter->stapriv;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct set_assocsta_parm *passocsta_parm = (struct set_assocsta_parm *)(pcmd->parmbuf);
 struct set_assocsta_rsp *passocsta_rsp = (struct set_assocsta_rsp *) (pcmd->rsp);
 struct sta_info *psta = rtw_get_stainfo(pstapriv, passocsta_parm->addr);

 if (psta == ((void*)0)) {
  RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\nERROR: setassocsta_cmdrsp_callbac => can't get sta_info\n\n"));
  goto exit;
 }

 psta->aid = psta->mac_id = passocsta_rsp->cam_id;

 spin_lock_bh(&pmlmepriv->lock);

 if ((check_fwstate(pmlmepriv, WIFI_MP_STATE) == 1) && (check_fwstate(pmlmepriv, _FW_UNDER_LINKING) == 1))
  _clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);

 set_fwstate(pmlmepriv, _FW_LINKED);
 spin_unlock_bh(&pmlmepriv->lock);

exit:
 rtw_free_cmd_obj(pcmd);
}
