
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_priv {int dummy; } ;
struct sta_info {int mac_id; int aid; } ;
struct set_assocsta_rsp {int cam_id; } ;
struct set_assocsta_parm {int addr; } ;
struct mlme_priv {int lock; int fw_state; } ;
struct cmd_obj {scalar_t__ rsp; scalar_t__ parmbuf; } ;
struct _adapter {struct mlme_priv mlmepriv; struct sta_priv stapriv; } ;


 int WIFI_MP_STATE ;
 int _FW_LINKED ;
 int _FW_UNDER_LINKING ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int r8712_free_cmd_obj (struct cmd_obj*) ;
 struct sta_info* r8712_get_stainfo (struct sta_priv*,int ) ;
 int set_fwstate (struct mlme_priv*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void r8712_setassocsta_cmdrsp_callback(struct _adapter *padapter,
           struct cmd_obj *pcmd)
{
 unsigned long irqL;
 struct sta_priv *pstapriv = &padapter->stapriv;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct set_assocsta_parm *passocsta_parm =
    (struct set_assocsta_parm *)(pcmd->parmbuf);
 struct set_assocsta_rsp *passocsta_rsp =
    (struct set_assocsta_rsp *) (pcmd->rsp);
 struct sta_info *psta = r8712_get_stainfo(pstapriv,
        passocsta_parm->addr);

 if (!psta)
  return;
 psta->aid = psta->mac_id = passocsta_rsp->cam_id;
 spin_lock_irqsave(&pmlmepriv->lock, irqL);
 if ((check_fwstate(pmlmepriv, WIFI_MP_STATE)) &&
     (check_fwstate(pmlmepriv, _FW_UNDER_LINKING)))
  pmlmepriv->fw_state ^= _FW_UNDER_LINKING;
 set_fwstate(pmlmepriv, _FW_LINKED);
 spin_unlock_irqrestore(&pmlmepriv->lock, irqL);
 r8712_free_cmd_obj(pcmd);
}
