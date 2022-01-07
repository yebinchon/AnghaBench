
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ traffic_busy; } ;
struct mlme_priv {int lock; TYPE_1__ sitesurveyctrl; } ;
struct _adapter {int hw_init_completed; struct mlme_priv mlmepriv; } ;


 int _FW_UNDER_LINKING ;
 int _FW_UNDER_SURVEY ;
 scalar_t__ check_fwstate (struct mlme_priv*,int) ;
 int r8712_free_network_queue (struct _adapter*) ;
 int r8712_sitesurvey_cmd (struct _adapter*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u8 r8712_set_802_11_bssid_list_scan(struct _adapter *padapter)
{
 struct mlme_priv *pmlmepriv = ((void*)0);
 unsigned long irqL;
 u8 ret = 1;

 if (!padapter)
  return 0;
 pmlmepriv = &padapter->mlmepriv;
 if (!padapter->hw_init_completed)
  return 0;
 spin_lock_irqsave(&pmlmepriv->lock, irqL);
 if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY | _FW_UNDER_LINKING) ||
     pmlmepriv->sitesurveyctrl.traffic_busy) {

  ret = (u8)check_fwstate(pmlmepriv, _FW_UNDER_SURVEY);
 } else {
  r8712_free_network_queue(padapter);
  ret = r8712_sitesurvey_cmd(padapter, ((void*)0));
 }
 spin_unlock_irqrestore(&pmlmepriv->lock, irqL);
 return ret;
}
