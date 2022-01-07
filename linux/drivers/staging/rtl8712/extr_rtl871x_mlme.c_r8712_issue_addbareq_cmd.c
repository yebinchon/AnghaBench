
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ht_priv {int ht_option; int* baddbareq_issued; scalar_t__ ampdu_enable; } ;
struct mlme_priv {struct ht_priv htpriv; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;


 int r8712_addbareq_cmd (struct _adapter*,int ) ;

void r8712_issue_addbareq_cmd(struct _adapter *padapter, int priority)
{
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct ht_priv *phtpriv = &pmlmepriv->htpriv;

 if ((phtpriv->ht_option == 1) && (phtpriv->ampdu_enable)) {
  if (!phtpriv->baddbareq_issued[priority]) {
   r8712_addbareq_cmd(padapter, (u8)priority);
   phtpriv->baddbareq_issued[priority] = 1;
  }
 }
}
