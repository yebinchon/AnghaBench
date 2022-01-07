
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct mlme_priv {int lock; } ;
struct adapter {struct mlme_priv mlmepriv; } ;
struct TYPE_2__ {int sa_query_timer; } ;


 int DBG_871X (char*) ;
 int _FW_LINKED ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 struct adapter* from_timer (int ,struct timer_list*,int ) ;
 TYPE_1__ mlmeextpriv ;
 struct adapter* padapter ;
 int rtw_disassoc_cmd (struct adapter*,int ,int) ;
 int rtw_free_assoc_resources (struct adapter*,int) ;
 int rtw_indicate_disconnect (struct adapter*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void sa_query_timer_hdl(struct timer_list *t)
{
 struct adapter *padapter =
  from_timer(padapter, t, mlmeextpriv.sa_query_timer);
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

 spin_lock_bh(&pmlmepriv->lock);

 if (check_fwstate(pmlmepriv, _FW_LINKED)) {
  rtw_disassoc_cmd(padapter, 0, 1);
  rtw_indicate_disconnect(padapter);
  rtw_free_assoc_resources(padapter, 1);
 }

 spin_unlock_bh(&pmlmepriv->lock);
 DBG_871X("SA query timeout disconnect\n");
}
